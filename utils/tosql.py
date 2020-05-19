# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 16:17'

import pymysql
import configparser
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.types import *


config = configparser.ConfigParser()
config.read("../config.ini")


def ConnectSql():
    host = config['MYSQL']["host"]
    port = config['MYSQL']["port"]
    user = config['MYSQL']["user"]
    pwd = config['MYSQL']["pwd"]
    conn = pymysql.connect(host=host,port=int(port),user=user,password=pwd)
    cur = conn.cursor()     #生成游标对象
    return conn,cur

def Closesql(conn,cur):
    cur.close()
    conn.close()
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
    host = config['MYSQL']["host"]
    port = config['MYSQL']["port"]
    user = config['MYSQL']["user"]
    pwd = config['MYSQL']["pwd"]
    connect_info = f'mysql+pymysql://{user}:{pwd}@{host}:{port}/{database}'
    engine = create_engine(connect_info)

    df.to_sql(name=table_name,
              con=engine,
              if_exists=if_exists,
              index=index,
              dtype=dtype)


if __name__ == '__main__':

    csvtosql('../data/users.csv',table_name='users',database='MovieRecommender',if_exists='replace',header=0)