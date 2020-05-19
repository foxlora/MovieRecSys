# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 10:59'

from PyQt5.Qt import *
from ui.login_sucess import Ui_LoginSucess

class LoginSucessPane(QWidget,Ui_LoginSucess):

    #定义信号
    to_movieinfo_signal = pyqtSignal()
    to_mainwindow_signal = pyqtSignal()
    to_footprint_signal = pyqtSignal()

    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)



    def to_movieinfo(self):
        self.to_movieinfo_signal.emit()
    def to_mainwindow(self):
        self.to_mainwindow_signal.emit()
    def to_footprint(self):
        self.to_footprint_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = LoginSucessPane()
    window.show()
    sys.exit(app.exec_())

