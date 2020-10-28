# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 10:59'

from PyQt5.Qt import *
from ui.login_sucess import Ui_LoginSucess
from preparation.fetch_movie_info import FetchFromMySql
from src.offline.hot_recom import HotRecom
from src.online.realtime_recom import RealTimeRecom
import os

class LoginSucessPane(QWidget,Ui_LoginSucess):

    #定义信号
    to_moviesearch_signal = pyqtSignal(str)
    to_mainwindow_signal = pyqtSignal()
    to_footprint_signal = pyqtSignal()

    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)
        self.uid = None


    def initUI(self):

        fetchinfo = FetchFromMySql()
        hotrem = HotRecom()
        realtimerem = RealTimeRecom()
        realtimerem.load_data()

        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        raing_file_path = os.path.join(BASE_DIR, 'data/realtime_model')
        _, algo = realtimerem.load_model(raing_file_path)
        realtimerem.algo = algo

        self.RealTimeRecomBox.initUI()
        self.OfflineRecomBox.initUI()
        self.HotRecomBox.initUI()
        self.RealTimeRecomBox.updateUI(movies_list=realtimerem.get_realtime_recom(self.uid),msg='您还没有评分记录')
        self.OfflineRecomBox.updateUI(movies_list=fetchinfo.get_recom_movies_byuid(self.uid,10),msg="尚未为您生成离线推荐内容")
        self.HotRecomBox.updateUI(movies_list=hotrem.get_current_hotmovies(10))

        self.accountLabel.setText(f'账号：{self.uid}')


    def to_movieinfo(self):
        search_text = self.searchLineEdit.text()
        self.to_moviesearch_signal.emit(search_text)

    def to_mainwindow(self):
        self.to_mainwindow_signal.emit()
    def to_footprint(self):
        self.to_footprint_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = LoginSucessPane()
    window.uid = 'foxlora1'
    window.initUI()
    window.show()
    sys.exit(app.exec_())

