# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 10:59'

from PyQt5.Qt import *
from ui.login_sucess import Ui_LoginSucess
from src.fetch_movie_info import FetchFromMySql
from src.offline.hot_recom import HotRecom

class LoginSucessPane(QWidget,Ui_LoginSucess):

    #定义信号
    to_moviesearch_signal = pyqtSignal(str)
    to_mainwindow_signal = pyqtSignal()
    to_footprint_signal = pyqtSignal()

    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)


    def initUI(self,account):
        fetchinfo = FetchFromMySql()
        hotrem = HotRecom()

        self.RecomBox.initUI(movies_list=fetchinfo.get_recom_movies_byuid(account,10))
        self.HotRecomBox.initUI(movies_list=hotrem.get_current_hotmovies(10))

        self.accountLabel.setText(f'账号：{account}')


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
    window.initUI('1')
    window.show()
    sys.exit(app.exec_())

