
'''
将数据导入到mysql数据库中：

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 16:55'

import os

from utils import tosql
from utils.logger import Logger

import configparser
config = configparser.RawConfigParser()
config.read("../config.ini")






class DataToSql():
    '''
    将数据导入到mysql中
    :return:
    '''
    def __init__(self):
        self.logger = Logger()
        self.connect_sql()

    def connect_sql(self):
        try:
            self.conn,self.cur = tosql.ConnectSql()
            self.logger.info('connect to mysql sucess')
        except Exception as e:
            raise e
            self.logger.error(str(e))

    def create_database(self,databasename):
        try:
            # 新建MovieRecommender数据库
            sql_creatDatabase = ["drop database if exists MovieRecommender;",
                                 "create database MovieRecommender;",
                                 "use MovieRecommender;",
                                 ]
            for sql in sql_creatDatabase:
                self.cur.execute(sql)

            self.logger.info('成功创建MovieRecommender数据库')

        except:
            raise Exception
            logger.error('MovieRecommender数据库创建失败')


    #把links.csv中的数据导入到mysql中
    try:
        tosql.csvtosql('../data/links.csv','MovieRecommender',)
        logger.info('links.csv导入数据库成功')

    except Exception as e:
        print(e)
        logger.error('links.csv导入数据库失败'+ str(e))



if __name__ == '__main__':
    datatosql()


