# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/20 1:40'

import configparser
import os


class Config:
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    config_file_path = os.path.join(BASE_DIR,'config.ini')
    config = configparser.ConfigParser()
    config.read(config_file_path)


if __name__ == '__main__':
    config = Config().config
    a = config['MYSQL']["host"]
    print(a)