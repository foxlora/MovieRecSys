# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 17:28'

import configparser
config = configparser.RawConfigParser()
config.read("../config.ini")

import logging
import os

class Logger:

    def __init__(self, prefix_name="_",LOG_PATH = 'log'):
        if os.path.exists(LOG_PATH):
            pass
        else:
            os.mkdir(LOG_PATH)
        self.prefix = prefix_name
        self.info_logger = logging.getLogger("info")
        self.error_logger = logging.getLogger("error")
        self.format = logging.Formatter('[%(asctime)s][%(threadName)s:%(thread)d][task_id:%(name)s][%(filename)s:%(lineno)d]' '[%(levelname)s] : %(message)s')
        # 指定文件位置文件名以及输出格式
        info_file_handler = logging.FileHandler("%s/%sinfo.log" % (LOG_PATH, prefix_name), encoding='utf-8')
        info_file_handler.setFormatter(self.format)
        error_file_handler = logging.FileHandler("%s/%serror.log" % (LOG_PATH, prefix_name), encoding='utf-8')
        error_file_handler.setFormatter(self.format)
        self.info_logger.addHandler(info_file_handler)
        self.error_logger.addHandler(error_file_handler)
        # 指定日志的最低输出级别
        self.info_logger.setLevel(logging.INFO)
        self.error_logger.setLevel(logging.ERROR)



    def debug(self, msg, *args, **kwargs):
        self.info_logger.debug(msg, *args, **kwargs)


    def info(self, msg, *args, **kwargs):
        self.info_logger.info(msg, *args, **kwargs)

    def warn(self, msg, *args, **kwargs):
        self.info_logger.warning(msg, *args, **kwargs)

    def warning(self, msg, *args, **kwargs):
        self.info_logger.warning(msg, *args, **kwargs)

    def error(self, msg, *args, **kwargs):
        self.error_logger.error(msg, *args, **kwargs)


    def fatal(self, msg, *args, **kwargs):
        self.error_logger.fatal(msg, *args, **kwargs)

    def critical(self, msg, *args, **kwargs):
        self.error_logger.critical(msg, *args, **kwargs)



if __name__ == '__main__':
    logger = Logger()
    logger.info('info msg')
    logger.warning('warning msg')
    logger.error('error msg')