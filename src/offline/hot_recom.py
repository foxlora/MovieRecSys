# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/20 10:04'

from surprise import SVD
from surprise import Dataset

from surprise import Reader
from utils.logger import Logger
from utils.tosql import dftosql
from utils.config import Config
from collections import defaultdict
from surprise import dump

import pandas as pd



logger = Logger()

class HotRecom:
    def __init__(self):
        pass

    def load_data(self,filepath):
        # 载入原始.csv数据
        self.df = pd.read_csv(filepath,sep=',',dtype={'movieId':str})


    def predict(self,Dataframe:pd.DataFrame,n=20000):
        '''
        根据特定时间段打分的人数判断，如果人数相同，则比较平均评分
        :arg:
            n = 参与统计的最近记录数目，默认为20000
        :return:
        DataFrame:['movieId','rating_times','mean_rating']
        '''
        df = Dataframe

        df.sort_values('timestamp',inplace=True)
        #取最近的2万条记录进行统计
        df = df.iloc[-n:]


        df_group_id = df.groupby('movieId').count()
        df_group_mean = df.groupby('movieId').mean()


        df_group_mean = df_group_mean.reset_index(drop=True)


        df_hot_recom = df_group_id.reset_index()

        df_hot_recom.drop(["userId","timestamp"],axis=1,inplace=True)


        df_hot_recom['mean_rating'] = df_group_mean['rating']
        df_hot_recom.rename(columns={'rating':'rating_times'},inplace=True)


        #给处理好的df按照rating_times,以及mean_rating排序：【movieId  rating_times  mean_rating】

        df_hot_recom.sort_values(['rating_times','mean_rating'],inplace=True,ascending=False)
        return df_hot_recom





    def get_top_n_hot(self,predictions:pd.DataFrame,n=10):
        '''Return the top-N hot recommendation for each user

        Args:
            predictions: sorted dataframe
            n(int): The number of recommendation to output for each user. Default
                is 10.

        Returns:
        A list where elements consisted of movieId:
            [[movieId  rating_times  mean_rating], ...] of size n.

            [['187593' 11 3.8636363636363638]
             ['2571' 10 4.5]
             ['79132' 10 4.15]
             ['7153' 10 3.9]]


        '''



        df = preditions.iloc[:n]
        return df.values[:,0]







    def save_mode(self,file_path):
        dump.dump(file_path,algo=self.algo,predictions=self.predictions)




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

        df = pd.DataFrame(data=predictions)
        df.columns = ['uid','iid','true_r','est','detail']
        svd_predictions = '../../data/svd_predictions.csv'
        df.to_csv(svd_predictions,index=False)
        df.drop(columns=['true_r','detail'],inplace=True)
        dftosql(DataFrame=df,database=database,table_name=tablename)




    def load_model(self,file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions,loaded_algo

if __name__ == '__main__':
    hot_recom = HotRecom()
    hot_recom.load_data('../../data/ratings.csv')
    preditions = hot_recom.predict(hot_recom.df,n=2000)

    hot_recom.get_top_n_hot(preditions,50)
