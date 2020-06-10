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
    button0_0_clicked = pyqtSignal(str)
    button0_1_clicked = pyqtSignal(str)
    button1_0_clicked = pyqtSignal(str)
    button1_1_clicked = pyqtSignal(str)
    button2_0_clicked = pyqtSignal(str)
    button2_1_clicked = pyqtSignal(str)
    button3_0_clicked = pyqtSignal(str)
    button3_1_clicked = pyqtSignal(str)
    button4_0_clicked = pyqtSignal(str)
    button4_1_clicked = pyqtSignal(str)
    button5_0_clicked = pyqtSignal(str)
    button5_1_clicked = pyqtSignal(str)
    button6_0_clicked = pyqtSignal(str)
    button6_1_clicked = pyqtSignal(str)
    button7_0_clicked = pyqtSignal(str)
    button7_1_clicked = pyqtSignal(str)
    button8_0_clicked = pyqtSignal(str)
    button8_1_clicked = pyqtSignal(str)
    button9_0_clicked = pyqtSignal(str)
    button9_1_clicked = pyqtSignal(str)


    def __init__(self,parent=None):
        super().__init__(parent=parent)
        # self.initUI()








    def get_movieId_bybuttontext(self,buttontext):
        fetchinfo = FetchFromMySql()
        movie_title,movie_date = buttontext.split("\n")
        sql = f'SELECT movieId FROM MovieRecommender.moviesinfo WHERE title = "{movie_title}"'
        data = fetchinfo.execute_sql(sql)
        return data[0][0]



    def button0_1_toinfo(self):
        buttontext = self.button0_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button0_1_clicked.emit(movieId)

    def button1_1_toinfo(self):
        buttontext = self.button1_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button1_1_clicked.emit(movieId)


    def button2_1_toinfo(self):
        buttontext = self.button2_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button2_1_clicked.emit(movieId)

    def button3_1_toinfo(self):
        buttontext = self.button3_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button3_1_clicked.emit(movieId)

    def button4_1_toinfo(self):
        buttontext = self.button4_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button4_1_clicked.emit(movieId)

    def button5_1_toinfo(self):
        buttontext = self.button5_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button5_1_clicked.emit(movieId)


    def button6_1_toinfo(self):
        buttontext = self.button6_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button6_1_clicked.emit(movieId)

    def button7_1_toinfo(self):
        buttontext = self.button7_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button7_1_clicked.emit(movieId)

    def button8_1_toinfo(self):
        buttontext = self.button8_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button8_1_clicked.emit(movieId)

    def button9_1_toinfo(self):
        buttontext = self.button9_1.text()
        movieId = self.get_movieId_bybuttontext(buttontext)
        self.button9_1_clicked.emit(movieId)





    def initUI(self,movies_list:list=[],msg:str=None):
        '''

        :param
            movie_exist:默认有内容，显示movies信息
            msg:不存在内容，显示的信息
        :return:
        '''
        # if 'gridLayout' in self.__dict__.keys():
        #     for i in range(self.gridLayout.count()):
        #         self.gridLayout.itemAt(i).widget().deleteLater()
        #     self.gridLayout.setEnabled(False)
        # self.__dict__ = {}




        if msg:#没有内容
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

        if len(movies_list) < 10:
            movies_list.extend([None] * (10 - len(movies_list)))


        self.movies = movies_list


        names = self.__dict__



        self.gridLayout = QGridLayout(self)
        self.gridLayout.setObjectName("gridLayout")
        self.gridLayout.setEnabled(True)

        fetchmovieinfo = FetchFromMySql()
        for index,movie in enumerate(self.movies):
            if movie is not None:


                movie_image_path = fetchmovieinfo.get_movie_image(movie)
                movie_title = fetchmovieinfo.get_movie_title(movie)
                movie_date = fetchmovieinfo.get_movie_date(movie)


                names['widget'+str(index)] = QWidget(self)
                names['verticalLayout'+str(index)] = QVBoxLayout(names['widget'+str(index)])
                names['verticalLayout'+str(index)].setContentsMargins(0, 0, 0, 0)
                names['verticalLayout'+str(index)].setObjectName('verticalLayout'+str(index))


                names['button'+str(index)+'_0'] = QPushButton(names['widget'+str(index)])
                # names['button' + str(index) + '_0'].setMaximumSize(QSize(80, 120))
                names['button'+str(index)+'_0'].setObjectName('button'+str(index)+'_0')
                pixmap = QPixmap(movie_image_path)
                # names['button'+str(index)+'_0'].setPixmap(pixmap)
                # names['button' + str(index) + '_0'].setAlignment(Qt.AlignCenter)
                icon = QIcon()
                icon.addPixmap(pixmap)
                names['button' + str(index) + '_0'].setIcon(icon)
                names['button' + str(index) + '_0'].setIconSize(QSize(80,120))
                names['button' + str(index) + '_0'].setFlat(True)
                names['button' + str(index) + '_0'].clicked.connect(eval(f'self.button{index}_1_toinfo'))

                names['verticalLayout'+str(index)].addWidget(names['button'+str(index)+'_0'])

                names['button' + str(index)+'_1'] = QPushButton(names['widget'+str(index)])
                # names['button' + str(index)+'_1'].setWordWrap(True)
                # self.label_2.setAlignment(Qt.AlignCenter)
                names['button' + str(index)+'_1'].setObjectName('button' + str(index)+'_1')
                names['button' + str(index)+'_1'].setText(f'{movie_title}\n{movie_date}')
                # names['button' + str(index) + '_1'].setAlignment(Qt.AlignCenter)
                names['button' + str(index) + '_1'].setFlat(True)
                names['button' + str(index) + '_1'].clicked.connect(eval(f'self.button{index}_1_toinfo'))

                names['verticalLayout'+str(index)].addWidget(names['button' + str(index)+'_1'])

                self.gridLayout.addWidget(names['widget'+str(index)], index//5, index%5, 1, 1)

            else:
                names['widget' + str(index)] = QWidget(self)
                names['verticalLayout' + str(index)] = QVBoxLayout(names['widget' + str(index)])
                names['verticalLayout' + str(index)].setContentsMargins(0, 0, 0, 0)
                names['verticalLayout' + str(index)].setObjectName('verticalLayout' + str(index))

                names['button' + str(index) + '_0'] = QPushButton(names['widget' + str(index)])
                # names['button' + str(index) + '_0'].setMaximumSize(QSize(80, 120))
                names['button' + str(index) + '_0'].setObjectName('button' + str(index) + '_0')
                # pixmap = QPixmap(movie_image_path)
                # names['label' + str(index) + '_0'].setPixmap(pixmap)
                # names['button' + str(index) + '_0'].setAlignment(Qt.AlignCenter)
                # pixmap = QPixmap(movie_image_path)
                # icon = QIcon()
                # icon.addPixmap(pixmap)
                # names['button' + str(index) + '_0'].setIcon(icon)
                names['button' + str(index) + '_0'].setFlat(True)
                names['button' + str(index) + '_0'].clicked.connect(eval(f'self.button{index}_1_toinfo'))






                names['verticalLayout' + str(index)].addWidget(names['button' + str(index) + '_0'])

                names['button' + str(index) + '_1'] = QPushButton(names['widget' + str(index)])
                # names['button' + str(index) + '_1'].setWordWrap(True)
                # self.label_2.setAlignment(Qt.AlignCenter)
                names['button' + str(index) + '_1'].setObjectName('button' + str(index) + '_1')
                # names['label' + str(index) + '_1'].setText(f'{movie_title}\n{movie_date}')
                # names['button' + str(index) + '_1'].setAlignment(Qt.AlignCenter)
                names['button' + str(index) + '_1'].setFlat(True)
                names['button' + str(index) + '_1'].clicked.connect(eval(f'self.button{index}_1_toinfo'))

                names['verticalLayout' + str(index)].addWidget(names['button' + str(index) + '_1'])

                self.gridLayout.addWidget(names['widget' + str(index)], index // 5, index % 5, 1, 1)


    def updateUI(self,movies_list:list=None,msg:str='没有找到相关内容'):
        names = self.__dict__
        if not movies_list:  # 没有内容
            for index in range(10):
                icon = QIcon()
                icon.addPixmap(QPixmap(""))
                names['button' + str(index) + '_0'].setIcon(icon)
                # names['button' + str(index) + '_0'].setPixmap(QPixmap(""))
                names['button' + str(index) + '_1'].setText('')

            self.button2_1.setText(msg)
            return


        fetchmovieinfo = FetchFromMySql()
        for index, movie in enumerate(movies_list):

            movie_image_path = fetchmovieinfo.get_movie_image(movie)
            movie_title = fetchmovieinfo.get_movie_title(movie)
            movie_date = fetchmovieinfo.get_movie_date(movie)
            pixmap = QPixmap(movie_image_path)
            icon = QIcon()
            icon.addPixmap(pixmap)
            names['button' + str(index) + '_0'].setIcon(icon)
            names['button' + str(index) + '_0'].setIconSize(QSize(80, 120))
            names['button' + str(index) + '_0'].clicked.disconnect(eval(f'self.button{index}_1_toinfo'))
            names['button' + str(index) + '_0'].clicked.connect(eval(f'self.button{index}_1_toinfo'))



            names['button' + str(index) + '_1'].setText(f'{movie_title}\n{movie_date}')
            names['button' + str(index) + '_1'].clicked.disconnect(eval(f'self.button{index}_1_toinfo'))
            names['button' + str(index) + '_1'].clicked.connect(eval(f'self.button{index}_1_toinfo'))



    def hide_content(self):
        self.setTitle()


if __name__ == '__main__':
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = QMyMovieGroupBox()
    window.get_movieId_bybuttontext('Nixon \n1995')
    window.initUI(movies_list=['1'])
    window.updateUI(movies_list=['2','3'])

    window.setWindowTitle('nihao')
    window.show()
    sys.exit(app.exec_())
