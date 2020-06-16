# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/18 10:46'

from surprise import SVD
from surprise import Dataset
from surprise import Reader
from utils.logger import Logger
from utils.tosql import dftosql
from utils.config import Config
from collections import defaultdict
from surprise import dump
import os

import pandas as pd



logger = Logger()

class SVDRecom:
    def __init__(self):
        pass

    def load_data(self):
        # 载入原始.csv数据
        reader = Reader(line_format='user item rating timestamp', sep=',', skip_lines=1)
        data = Dataset.load_from_file(file_path='../' + Config().config['DATAPATH']['ratings_path'], reader=reader)

        # 构建训练集
        self.trainset = data.build_full_trainset()
        logger.info('数据集成功构建')


    def get_top_n(self,predictions,n=10):
        '''Return the top-N recommendation for each user from a set of predictions.

        Args:
            predictions(list of Prediction objects): The list of predictions, as
                returned by the test method of an algorithm.
            n(int): The number of recommendation to output for each user. Default
                is 10.

        Returns:
        A dict where keys are user (raw) ids and values are lists of tuples:
            [(raw item id, rating estimation), ...] of size n.
        '''


        # First map the predictions to each user.
        top_n = defaultdict(list)
        for uid, iid, true_r, est, _ in predictions:
            top_n[uid].append((iid, est))

        # Then sort the predictions for each user and retrieve the k highest ones.
        for uid, user_ratings in top_n.items():
            user_ratings.sort(key=lambda x: x[1], reverse=True)
            top_n[uid] = user_ratings[:n]

        return top_n

    def get_top_n_byuid(self,uid:str,predictions,n=10):
        '''Return the top-N recommendation for Specified user from a set of predictions.

        Args:
            predictions(list of Prediction objects): The list of predictions, as
                returned by the test method of an algorithm.
            uid:raw user id
            n(int): The number of recommendation to output for each user. Default
                is 10.

        Returns:
        A list where elements are lists of tuples:
            [(raw item id, rating estimation), ...] of size n.
        '''


        # First map the predictions to each user.
        try:
            top_n_uid = [(iid,est)for userid, iid, true_r, est, _ in predictions if userid==uid]


        # Then sort the predictions for the user and retrieve the k highest ones.

            top_n_uid.sort(key=lambda x: x[1], reverse=True)
            top_n_uid = top_n_uid[:n]

            return top_n_uid


        except:
            raise KeyError('not find uid:%s,please check userid and retry'%uid)



    def fit(self):
        # 训练模型
        self.algo = SVD()
        self.algo.fit(trainset=self.trainset)

    def save_mode(self,file_path):
        dump.dump(file_path,algo=self.algo,predictions=self.predictions)


    def predict(self):
        #predict ratings for all pairs (u, i) that are NOT in the training set.
        testset = self.trainset.build_anti_testset()#未评分数据集
        # testset = self.trainset.build_testset()#已评分数据集
        self.predictions = self.algo.test(testset)#


    def tosql(self,predictions,database,tablename):
        '''
        table name:svd_predictions
        table columns:['user','movie','true_rating','est']
        :Args:
            predictions:[(uid, iid, true_r, est, _),...]
            database:name of database stored in mysql
            tablename:name of table stored in mysql
        :return:
        '''
        top_n = defaultdict(list)
        df = pd.DataFrame(data=predictions)
        df.columns = ['uid','iid','true_r','est','detail']
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        svd_predictions = os.path.join(BASE_DIR,'data/svd_predictions.csv')
        df.to_csv(svd_predictions,index=False)
        df.drop(columns=['true_r','detail'],inplace=True)
        dftosql(DataFrame=df,database=database,table_name=tablename,if_exists="replace")


        return top_n

    def load_model(self,file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions,loaded_algo




if __name__ == '__main__':
    svdRecom = SVDRecom()
    # svdRecom.load_data()
    # svdRecom.fit()
    # svdRecom.predict()
    # svdRecom.save_mode('../../data/svd_model')
    #
    predictions,_ = svdRecom.load_model(file_path='../../data/svd_model')
    svdRecom.tosql(predictions,'MovieRecommender','svd_predictions')

