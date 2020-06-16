# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/6/16 10:13'


from src.offline.svd_recom import SVDRecom
from src.offline.knn_recom import KnnRecom
from src.offline.hot_recom import HotRecom

def update_svd_predictions():
    svd_recom = SVDRecom()
    svd_recom.load_data()
    svd_recom.fit()
    svd_recom.predict()
    svd_recom.save_mode('../data/svd_model')
    svd_recom.tosql(svd_recom.predictions, 'MovieRecommender', 'svd_predictions')

def update_knn_predictions():
    knnRecom = KnnRecom()
    knnRecom.load_data()
    knnRecom.fit()
    knnRecom.tosql(20, 'MovieRecommender', 'knn_predictions')

def update_hot_recom():
    hot_recom = HotRecom()
    hot_recom.load_data('../data/ratings.csv')
    preditions = hot_recom.predict(hot_recom.df)

    # hot_recom.get_top_n_hot(preditions,50)
    hot_recom.tosql(preditions, database='MovieRecommender', tablename='hot_recom')


def update_hot_recom_all():
    hot_recom = HotRecom()
    hot_recom.load_data('../data/ratings.csv')
    preditions = hot_recom.predict_all(hot_recom.df)

    # hot_recom.get_top_n_hot(preditions,50)
    hot_recom.tosql(preditions, database='MovieRecommender', tablename='hot_recom_all')
