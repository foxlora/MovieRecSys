# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/21 18:52'

from PyQt5.Qt import *
from src.fetch_movie_info import FetchFromMySql

class QMyMovieGroupBox(QGroupBox):
    '''

    '''
    def __init__(self,parent=None):
        super().__init__(parent=parent)
        # self.initUI()


    def initUI(self,movies_list:list=None,msg:str=None):
        '''

        :param
            movie_exist:默认有内容，显示movies信息
            msg:不存在内容，显示的信息
        :return:
        '''
        self.movies = movies_list




        if not movies_list:#没有内容
            self.setObjectName("GroupBox")
            self.setEnabled(True)
            self.resize(776, 642)
            self.verticalLayout_2 =QVBoxLayout(self)
            self.verticalLayout_2.setObjectName("verticalLayout_2")
            self.widget = QWidget(self)

            self.widget.setObjectName("widget")
            self.verticalLayout = QVBoxLayout(self.widget)
            self.verticalLayout.setObjectName("verticalLayout")
            self.label = QLabel(self.widget)
            self.label.setStyleSheet("font: 11pt \"黑体\";")
            self.label.setAlignment(Qt.AlignCenter)
            self.label.setObjectName("label")
            self.label.setText(msg)
            self.verticalLayout.addWidget(self.label)
            self.verticalLayout_2.addWidget(self.widget)


            return

        names = self.__dict__

        self.gridLayout = QGridLayout(self)
        self.gridLayout.setObjectName("gridLayout")
        fetchmovieinfo = FetchFromMySql()

        for index,movie in enumerate(self.movies):


            movie_image_path = fetchmovieinfo.get_movie_image(movie)
            movie_title = fetchmovieinfo.get_movie_title(movie)
            movie_date = fetchmovieinfo.get_movie_date(movie)


            names['widget'+str(index)] = QWidget(self)
            names['verticalLayout'+str(index)] = QVBoxLayout(names['widget'+str(index)])
            names['verticalLayout'+str(index)].setContentsMargins(0, 0, 0, 0)
            names['verticalLayout'+str(index)].setObjectName('verticalLayout'+str(index))


            names['label'+str(index)+'_0'] = QLabel(names['widget'+str(index)])
            names['label' + str(index) + '_0'].setMinimumSize(QSize(80, 120))
            names['label'+str(index)+'_0'].setObjectName('label'+str(index)+'_0')
            pixmap = QPixmap(movie_image_path)
            names['label'+str(index)+'_0'].setPixmap(pixmap)
            names['label' + str(index) + '_0'].setAlignment(Qt.AlignCenter)

            names['verticalLayout'+str(index)].addWidget(names['label'+str(index)+'_0'])

            names['label' + str(index)+'_1'] = QLabel(names['widget'+str(index)])
            names['label' + str(index)+'_1'].setWordWrap(True)
            # self.label_2.setAlignment(Qt.AlignCenter)
            names['label' + str(index)+'_1'].setObjectName('label' + str(index)+'_1')
            names['label' + str(index)+'_1'].setText(f'{movie_title}\n{movie_date}')
            names['label' + str(index) + '_1'].setAlignment(Qt.AlignCenter)

            names['verticalLayout'+str(index)].addWidget(names['label' + str(index)+'_1'])

            self.gridLayout.addWidget(names['widget'+str(index)], index//5, index%5, 1, 1)



    def hide_content(self):
        self.setTitle()


if __name__ == '__main__':
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = QMyMovieGroupBox()
    window.initUI(movies_list=['1','3','3','4','6','2'])
    window.setWindowTitle('nihao')
    window.show()
    sys.exit(app.exec_())
