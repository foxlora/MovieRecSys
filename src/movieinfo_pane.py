# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 14:29'

from PyQt5.Qt import *
from ui.movie_info import Ui_Form

class MovieInfoPane(QWidget,Ui_Form):

    login_signal = pyqtSignal()
    search_signal = pyqtSignal()


    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)


    def search(self):
        '''
        点击“搜索”按钮逻辑槽函数
        :return:
        '''
        search_text = self.searchLineEdit.text()
        #如果找不到影片
        self.search_signal.emit()


    def to_login(self):
        '''
        点击登录按钮之后逻辑处理
        :param:
        :return:
        '''
        self.login_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = MovieInfoPane()
    window.search_signal.connect(lambda :print('to search pane'))
    window.login_signal.connect(lambda :print('to login pane'))

    window.show()
    sys.exit(app.exec_())
