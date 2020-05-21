# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/21 18:17'


from PyQt5.Qt import *
from ui.movie_search import Ui_MovieSearch

class MovieSearchPane(QWidget,Ui_MovieSearch):

    search_signal = pyqtSignal()
    back_mainwindow_signal = pyqtSignal()


    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)


    def search_movie(self):
        '''
        点击“搜索”按钮逻辑槽函数
        :return:
        '''
        search_text = self.searchLineEdit.text()
        #如果找不到影片

        self.keywrodBox.setTitle(f'包含关键词"{search_text}"的电影：')
        self.search_signal.emit()


    def back_mainwindow(self):
        '''
        返回主界面
        :param:
        :return:
        '''
        self.back_mainwindow_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = MovieSearchPane()
    window.search_signal.connect(lambda :print('to search pane'))
    window.back_mainwindow_signal.connect(lambda :print('to mainwindow pane'))

    window.show()
    sys.exit(app.exec_())
