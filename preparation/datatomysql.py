
'''
将数据导入到mysql数据库中：

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 16:55'

import os
import sqlalchemy

from utils.tosql import FetchInFoFromSql,csvtosql
from utils.logger import Logger

import configparser
config = configparser.RawConfigParser()
config.read("../config.ini")






class DataToSql(FetchInFoFromSql):
    '''
    将数据导入到mysql中
    :return:
    '''
    def __init__(self):
        super().__init__()
        self.logger = Logger()




    def create_database(self,databasename,ifexist="fail"):
        '''

        :param databasename:
        :param ifexist: "fail",如果存在则报错
                        "append",如果存在，则用当前数据库
                        "replace",如果存在，删除当前数据库，新建同名数据库
        :return:
        '''
        try:
            # 新建MovieRecommender数据库
            if ifexist == "fail":
                sql_creatDatabase = [f"create database {databasename};"
                                     ]
                for sql in sql_creatDatabase:
                    self.cur.execute(sql)


            elif ifexist == "append":
                sql_creatDatabase = [f"SELECT * FROM information_schema.SCHEMATA where SCHEMA_NAME='{databasename}';",
                                     f"create database {databasename};"
                                     ]
                res = self.cur.execute(sql_creatDatabase[0])
                if res == 0:#数据库不存在
                    self.cur.execute(sql_creatDatabase[1])
                else:
                    self.logger.warning(f'{databasename}已存在')




            else:
                sql_creatDatabase = ["drop database if exists MovieRecommender;",
                                     f"create database {databasename};",
                                     f"use {databasename};",
                                     ]
                for sql in sql_creatDatabase:
                    self.cur.execute(sql)

                self.logger.info(f'成功新建数据库{databasename}，如果已存在，则覆盖')

        except:
            raise Exception

            self.logger.error(f'{databasename}数据库创建失败')




    def push_data_tosql(self,filepath,databasename,table_name,dtype=None):
        #把links.csv中的数据导入到mysql中
        try:

            csvtosql(filepath=filepath,database=databasename,header=0,table_name=table_name,dtype=dtype)
            self.logger.info(f'{filepath}导入数据库成功')

        except Exception as e:
            raise e
            self.logger.error(f'{filepath}导入数据库失败')






if __name__ == '__main__':
    datatosql = DataToSql()
    datatosql.create_database('MovieRecommender',ifexist='append')
    datatosql.push_data_tosql('../data/links.csv','MovieRecommender','links')
    datatosql.push_data_tosql('../data/movies.csv','MovieRecommender','movies')

    dtype = {"userId":sqlalchemy.types.TEXT,"movieId":sqlalchemy.types.TEXT,"rating":sqlalchemy.types.Float,"timestamp":sqlalchemy.types.BigInteger}
    datatosql.push_data_tosql('../data/ratings.csv','MovieRecommender','ratings',dtype=dtype)
    datatosql.push_data_tosql('../data/users.csv','MovieRecommender','users')



