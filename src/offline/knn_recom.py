# -*- coding: utf-8 -*-
'''
给定一部电影，返回与此电影相似的n部电影
计算任意两部电影的相似度
'''
__author__ = 'Foxlora'
__time__ = '2020/5/20 17:56'



from surprise import KNNBaseline
from surprise import Dataset
from surprise import Reader
from utils.logger import Logger
from utils.tosql import dftosql
from utils.config import Config
from collections import defaultdict
from surprise import dump

import pandas as pd
import os


logger = Logger()

class KnnRecom:
    def __init__(self):
        pass

    def load_data(self):
        # 载入原始.csv数据
        reader = Reader(line_format='user item rating timestamp', sep=',', skip_lines=1)
        data = Dataset.load_from_file(file_path='../' + Config().config['DATAPATH']['ratings_path'], reader=reader)

        # 构建训练集
        self.trainset = data.build_full_trainset()
        logger.info('数据集成功构建')


    def get_neighbors(self,movie_id_raw,n=10):
        movie_id_inner = self.trainset.to_inner_iid(movie_id_raw)
        movies_inner_id = self.algo.get_neighbors(movie_id_inner,k=n)
        movies_raw_id = [self.trainset.to_raw_iid(inner_id)for inner_id in movies_inner_id]
        return movies_raw_id

    def fit(self):
        # 训练模型
        sim_options = {'name': 'pearson_baseline', 'user_based': False}
        self.algo = KNNBaseline(sim_options=sim_options)
        self.algo.fit(trainset=self.trainset)


    def save_mode(self,file_path):
        dump.dump(file_path,algo=self.algo)



    def tosql(self,n,database,tablename):

        '''

        table name:knn_predictions
        table columns:['movieId','k nearest neighbors']
        :Args:
            n:number of nearest neighbors
            database:name of database stored in mysql
            tablename:name of table stored in mysql
        :return:
        '''

        data = []


        for iid in self.trainset.all_items():
            movie_rawid = self.trainset.to_raw_iid(iid)
            movies_inner_id = self.algo.get_neighbors(iid, k=n)
            data.append([movie_rawid,','.join([(self.trainset.to_raw_iid(inner_id)) for inner_id in movies_inner_id])])


        df = pd.DataFrame(data=data)
        df.columns = ['movieId','k_nearest_neighbors']
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        knn_predictions = os.path.join(BASE_DIR, 'data/knn_predictions.csv')

        df.to_csv(knn_predictions,index=False)

        dftosql(DataFrame=df,database=database,table_name=tablename,if_exists='replace')




    def load_model(self,file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions,loaded_algo




if __name__ == '__main__':
    knnRecom = KnnRecom()
    knnRecom.load_data()
    knnRecom.fit()
    # svdRecom.fit()
    # svdRecom.predict()
    # svdRecom.save_mode('../../data/svd_model')
    #

    knnRecom.tosql(20,'MovieRecommender','knn_predictions')


