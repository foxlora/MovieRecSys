# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/18 10:46'

from surprise import SVD
from surprise import Dataset
from surprise.model_selection import cross_validate
from surprise import Reader
from utils.logger import Logger
from collections import defaultdict
from surprise import dump

import pandas as pd

import configparser
config = configparser.RawConfigParser()
config.read("../../config.ini")


logger = Logger()

class SVDRecom:
    def __init__(self):
        pass

    def load_data(self):
        # 载入原始.csv数据
        reader = Reader(line_format='user item rating timestamp', sep=',', skip_lines=1)
        data = Dataset.load_from_file(file_path='../' + config['DATAPATH']['ratings_path'], reader=reader)

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
        self.predictions = self.algo.test(testset)#


    def tosql(self):
        '''
        table name:svd_recom
        table columns:['user','movie','true_rating','est']
        :Args:
            uid: (Raw) id of the user. See :ref:`this note<raw_inner_note>`.
            iid: (Raw) id of the item. See :ref:`this note<raw_inner_note>`.
            r_ui(float): The true rating :math:`r_{ui}`. Optional, default is
                ``None``.
        :return:
        '''
        top_n = defaultdict(list)
        for uid, iid, true_r, est, _ in self.predictions:
            top_n[uid].append((iid, est))


        return top_n

    def load_model(self,file_path):
        predictions, loaded_algo = dump.load(file_path)
        return predictions,loaded_algo




if __name__ == '__main__':
    svdRecom = SVDRecom()
    # svdRecom.load_data()
    # svdRecom.fit()
    # svdRecom.predict()
    predictions,_ = svdRecom.load_model(file_path='../../data/svd_model')
    a = svdRecom.get_top_n_byuid(uid='1',predictions=predictions,n=50)
    print(a)

    # top_n = svdRecom.get_top_n(predictions=svdRecom.predictions,n=10)
