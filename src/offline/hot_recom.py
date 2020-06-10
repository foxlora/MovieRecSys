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
from utils.tosql import FetchInFoFromSql

import pandas as pd



logger = Logger()

class HotRecom(FetchInFoFromSql):
    def __init__(self):
        super().__init__()

    def load_data(self,filepath):
        # 载入原始.csv数据
        self.df = pd.read_csv(filepath,sep=',',dtype={'movieId':str})

    def save_mode(self, file_path):
        dump.dump(file_path, algo=self.algo, predictions=self.predictions)

    def load_model(self, file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions, loaded_algo



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

    def predict_all(self,Dataframe:pd.DataFrame):
        '''
        根据特定时间段打分的人数判断，如果人数相同，则比较平均评分
        :arg:
            n = 参与统计的最近记录数目，默认为20000
        :return:
        DataFrame:['movieId','rating_times','mean_rating']
        '''
        df = Dataframe

        df.sort_values('timestamp',inplace=True)



        df_group_id = df.groupby('movieId').count()
        df_group_mean = df.groupby('movieId').mean()


        df_group_mean = df_group_mean.reset_index(drop=True)


        df_hot_recom_all = df_group_id.reset_index()

        df_hot_recom_all.drop(["userId","timestamp"],axis=1,inplace=True)


        df_hot_recom_all['mean_rating'] = df_group_mean['rating']
        df_hot_recom_all.rename(columns={'rating':'rating_times'},inplace=True)


        #给处理好的df按照rating_times,以及mean_rating排序：【movieId  rating_times  mean_rating】

        df_hot_recom_all.sort_values(['rating_times','mean_rating'],inplace=True,ascending=False)
        return df_hot_recom_all





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

        df = predictions.iloc[:n]
        return df.values[:,0]



    def tosql(self,predictions,database,tablename):
        '''
        将热门推荐结果存储在数据库中，
        table columns:['movieId','rating_times','mean_rating']
        :param predictions:
        :param database:
        :param tablename:
        :return:
        '''

        df = pd.DataFrame(data=predictions)
        df.columns = ['movieId','rating_times','mean_rating']
        dftosql(DataFrame=df,database=database,table_name=tablename,if_exists="replace")





    def get_current_hotmovies(self):
        sql = f"select movieId from MovieRecommender.hot_recom  limit 10"
        data = self.execute_sql(sql)#(('356',), ('318',), ('79132',), ('2571',), ('122904',), ('2959',), ('58559',), ('7153',), ('5952',), ('4993',))
        hot_movies = [i[0] for i in data]

        return hot_movies



if __name__ == '__main__':
    hot_recom = HotRecom()
    hot_recom.load_data('../../data/ratings.csv')
    preditions = hot_recom.predict_all(hot_recom.df)

    # hot_recom.get_top_n_hot(preditions,50)
    hot_recom.tosql(preditions,database='MovieRecommender',tablename='hot_recom_all')
    hot_recom.get_current_hotmovies()
