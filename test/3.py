import os
import logging
from logging.handlers import TimedRotatingFileHandler
import datetime
import json

LOG_PATH = "log"
LOG_INFO = '_info.log'
LOG_ERROR = '_error.log'


class logger:
    def __init__(self, prefix_name="flask"):
        if os.path.exists(LOG_PATH):
            pass
        else:
            os.mkdir(LOG_PATH)
        self.prefix = prefix_name
        self.info_logger = logging.getLogger("info")
        self.error_logger = logging.getLogger("error")
        self.format = logging.Formatter('[%(asctime)s][%(threadName)s:%(thread)d][task_id:%(name)s]\
[%(filename)s:%(lineno)d]' '[%(levelname)s] : %(message)s')
        # 指定文件位置文件名以及输出格式
        info_file_handler = logging.FileHandler("%s/%s%s" % (LOG_PATH, prefix_name, LOG_INFO))
        info_file_handler.setFormatter(self.format)
        error_file_handler = logging.FileHandler("%s/%s%s" % (LOG_PATH, prefix_name, LOG_ERROR))
        error_file_handler.setFormatter(self.format)
        self.info_logger.addHandler(info_file_handler)
        self.error_logger.addHandler(error_file_handler)
        # 指定日志的最低输出级别
        self.info_logger.setLevel(logging.NOTSET)
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
log =logger("celery")
log.info("jdshskh")
log.error("hdskck")
log.debug("1122debug")
log.warn("warn")
log.warning("warning")
log.critical("critical")
