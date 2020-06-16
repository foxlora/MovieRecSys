# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/6/16 9:52'





from apscheduler.schedulers.blocking import BlockingScheduler
from apscheduler.executors.pool import ProcessPoolExecutor
from scheduler.update_task import update_svd_predictions,update_knn_predictions,update_hot_recom,update_hot_recom_all



# 创建scheduler，多进程执行
executors = {
    'default': ProcessPoolExecutor(3)
}

scheduler = BlockingScheduler(executors=executors)

# 添加一个定时svd更新的任务， 每隔12个小时运行一次
scheduler.add_job(update_svd_predictions, trigger='interval', hours=12)
# 添加一个定时knn更新的任务， 每隔12个小时运行一次
scheduler.add_job(update_knn_predictions, trigger='interval', hours=12)
# 添加一个定时hot_recom更新的任务，每隔1小时运行一次
scheduler.add_job(update_hot_recom, trigger='interval', hours=1)
# 添加一个定时hot_recom_all任务，每隔3小时更新一次
scheduler.add_job(update_hot_recom_all, trigger='interval', hours=3)

scheduler.start()

