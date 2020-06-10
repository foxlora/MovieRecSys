# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 16:17'

import pymysql
from utils.config import Config
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.types import *




class FetchInFoFromSql:
    def __init__(self):
        try:
            self.conn,self.cur = self.ConnectSql()
        except:

            print('数据库连接失败')

    def ConnectSql(self):
        try:
            host = Config().config['MYSQL']["host"]
            port = Config().config['MYSQL']["port"]
            user = Config().config['MYSQL']["user"]
            pwd = Config().config['MYSQL']["pwd"]
            conn = pymysql.connect(host=host,port=int(port),user=user,password=pwd)
            cur = conn.cursor()     #生成游标对象
        except:
            print("数据库连接失败")
            conn = None
            cur = None

        return conn,cur

    def execute_sql(self,sql):
        '''
        执行sql语句
        :param sql:
        :return:
        '''
        try:
            self.cur.execute(sql)
            data = self.cur.fetchall()

        except Exception as e:
            print(e)
            print("查询失败")

            data = None
        return data


    def Closesql(self):
        self.cur.close()
        self.conn.close()
        return



def csvtosql(filepath,database,table_name,if_exists="fail",index=False,dtype=None,column_names=None,sep=',',header='infer'):
    '''
    将.csv导入到mysql数据库
    :arg:
        filepath:.csv文件路径
        database:mysql数据库名称
        table_name:mysql表名
        if_exists:三种模式{“fail”,“replace”,"append"}，默认是"fail"。
                    fail：若表存在，引发一个ValueError；
                    replace：若表存在，覆盖原来表内数据；
                    append：若表存在，将数据写到原表数据的后面。
        index:是否将DataFrame的index单独写到一列中，默认为“False”
        dtype:指定列的数据类型，字典形式存储{column_name: sql_dtype}
    :return:
    '''
    df = pd.read_csv(filepath_or_buffer=filepath,sep=sep,names=column_names,header=header)
    host = Config().config['MYSQL']["host"]
    port = Config().config['MYSQL']["port"]
    user = Config().config['MYSQL']["user"]
    pwd = Config().config['MYSQL']["pwd"]



    connect_info = f'mysql+pymysql://{user}:{pwd}@{host}:{port}/{database}'
    engine = create_engine(connect_info)

    df.to_sql(name=table_name,
              con=engine,
              if_exists=if_exists,
              index=index,
              dtype=dtype)

def dftosql(DataFrame,database,table_name,if_exists="fail",index=False,dtype=None):
    '''
    将pandas.DataFrame导入到mysql数据库
    :arg:
        database:mysql数据库名称
        table_name:mysql表名
        if_exists:三种模式{“fail”,“replace”,"append"}，默认是"fail"。
                    fail：若表存在，引发一个ValueError；
                    replace：若表存在，覆盖原来表内数据；
                    append：若表存在，将数据写到原表数据的后面。
        index:是否将DataFrame的index单独写到一列中，默认为“False”
        dtype:指定列的数据类型，字典形式存储{column_name: sql_dtype}
    :return:
    '''

    host = Config().config['MYSQL']["host"]
    port = Config().config['MYSQL']["port"]
    user = Config().config['MYSQL']["user"]
    pwd = Config().config['MYSQL']["pwd"]



    connect_info = f'mysql+pymysql://{user}:{pwd}@{host}:{port}/{database}'
    engine = create_engine(connect_info)

    DataFrame.to_sql(name=table_name,
              con=engine,
              if_exists=if_exists,
              index=index,
              dtype=dtype)

if __name__ == '__main__':

    csvtosql('../data/users.csv',table_name='users',database='Movie',if_exists='replace',header=0)