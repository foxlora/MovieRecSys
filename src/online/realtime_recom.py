# -*- coding: utf-8 -*-
'''
实时推荐
1.取出用户的历史评分物品列表
2.取最近评分的5部电影。汇总5部电影相似的50部电影+10部高分电影
3.计算评分
'''
__author__ = 'Foxlora'
__time__ = '2020/6/11 11:35'


from surprise import KNNBaseline
from surprise import Dataset
from surprise import Reader
from utils.logger import Logger
from utils.tosql import dftosql
from utils.config import Config
from collections import defaultdict
from surprise import dump

from src.fetch_movie_info import FetchInFoFromSql

import pandas as pd
import heapq
from src.offline.hot_recom import HotRecom


logger = Logger()

class RealTimeRecom:
    def __init__(self):
        pass
        self.k = 10 #参与计算得分的相似电影个数

    def load_data(self):
        # 载入原始.csv数据
        reader = Reader(line_format='user item rating timestamp', sep=',', skip_lines=1)
        data = Dataset.load_from_file(file_path='../' + Config().config['DATAPATH']['ratings_path'], reader=reader)

        # 构建训练集
        self.trainset = data.build_full_trainset()
        logger.info('数据集成功构建')


    def fit(self):
        # 训练模型
        sim_options = {'name': 'cosine', 'user_based': False}
        self.algo = KNNBaseline(sim_options=sim_options)
        self.algo.fit(trainset=self.trainset)

    def save_mode(self,file_path):
        dump.dump(file_path,algo=self.algo,predictions=None)


    def predict(self,uid):
        '''

        取出uid用户 5部评分电影，召回50部电影 + 10热门电影,去除已看过电影
        按评分排序
        :arg:
            uid:用户raw id
        :return
            realtime_recom:[(movieId,est)]
        '''
        realtime_recom = []
        #召回
        recall_movies = []
        hot_recom = HotRecom()
        user_ratings = self.get_rated_movies(uid)

        for (movieid, r) in user_ratings[-5:]:
            movie_raw_id = self.trainset.to_raw_iid(movieid)
            recall_movies.extend(self.get_kneighbors_byId(movie_raw_id))

        recall_movies.extend(hot_recom.get_current_hotmovies(10))


        #排序
        for movie_raw_id in set(recall_movies):
            user_inner_id = self.trainset.to_inner_uid(uid)
            movie_inner_id = self.trainset.to_inner_iid(movie_raw_id)
            if movie_inner_id not in [movieid for (movieid, r) in user_ratings]:#排除已经看过的电影
                est = self.estimate(user_inner_id,movie_inner_id)
                realtime_recom.append((movie_raw_id,est))
        return realtime_recom


    def estimate(self,uid,iid):
        '''
        计算 u i 的评分
        :param uid:用户inner id
        :param iid:电影inner id
        :return:
        '''
        user_ratings = self.trainset.ur[uid]
        neighbors = [(movieid, self.algo.sim[iid, movieid], r) for (movieid, r) in user_ratings]
        k_neighbors = heapq.nlargest(self.k, neighbors, key=lambda t: t[1])

        # compute weighted average
        sum_sim = sum_ratings = est = 0
        for (nb, sim, r) in k_neighbors:
            if sim > 0:
                sum_sim += sim
                sum_ratings += sim * r



        try:
            est = sum_ratings / sum_sim
        except ZeroDivisionError:
            pass  # just baseline again

        return est


    def get_rated_movies(self,user_raw_id):
        '''
        获取用户评分电影
        :param user_raw_id: 用户raw id
        :return:
        '''
        user_id_inner = self.trainset.to_inner_uid(user_raw_id)
        user_ratings = self.trainset.ur[user_id_inner]
        return user_ratings
        # rated_movies =set([rating[0] for rating in user_ratings])
        # print(f"用户{uid}最近评分的5部电影是{rated_movies}")

    def get_kneighbors_byId(self, movieId):
        '''
        从数据库中查询movieId最相关的20部电影
        :param movieId:
        :return:
        '''
        fetchinfo = FetchInFoFromSql()
        try:
            sql = f'SELECT k_nearest_neighbors FROM MovieRecommender.knn_predictions WHERE movieId = {movieId}'
            data = fetchinfo.execute_sql(sql)
            k_nearest_neighbors = eval("[" + data[0][0] + "]")
            return [str(movie) for movie in k_nearest_neighbors[:10]]

        except:
            return None

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
        svd_predictions = '../../data/svd_predictions.csv'
        df.to_csv(svd_predictions,index=False)
        df.drop(columns=['true_r','detail'],inplace=True)
        dftosql(DataFrame=df,database=database,table_name=tablename)


        return top_n

    def load_model(self,file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions,loaded_algo




if __name__ == '__main__':
    realtimeRecom = RealTimeRecom()
    realtimeRecom.load_data()
    # realtimeRecom.fit()
    # svdRecom.load_data()
    # svdRecom.fit()
    # svdRecom.predict()
    # realtimeRecom.save_mode('../../data/realtime_model')
    _,algo = realtimeRecom.load_model('../../data/realtime_model')
    realtimeRecom.algo = algo
    #

    realtimeRecom.predict('foxlora')
