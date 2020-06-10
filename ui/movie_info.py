# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'movie_info.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MovieInfo(object):
    def setupUi(self, MovieInfo):
        MovieInfo.setObjectName("MovieInfo")
        MovieInfo.resize(800, 900)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(MovieInfo)
        self.verticalLayout_2.setContentsMargins(14, 16, -1, -1)
        self.verticalLayout_2.setSpacing(9)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.verticalLayout_2.addLayout(self.horizontalLayout_2)
        self.widget = QtWidgets.QWidget(MovieInfo)
        self.widget.setObjectName("widget")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.widget)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.widget_3 = QtWidgets.QWidget(self.widget)
        self.widget_3.setObjectName("widget_3")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.widget_3)
        self.verticalLayout.setObjectName("verticalLayout")
        self.movieImage = QtWidgets.QLabel(self.widget_3)
        self.movieImage.setObjectName("movieImage")
        self.verticalLayout.addWidget(self.movieImage, 0, QtCore.Qt.AlignHCenter)
        self.ratingInfo = QtWidgets.QLabel(self.widget_3)
        self.ratingInfo.setObjectName("ratingInfo")
        self.verticalLayout.addWidget(self.ratingInfo)
        self.widget_2 = QtWidgets.QWidget(self.widget_3)
        self.widget_2.setObjectName("widget_2")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout(self.widget_2)
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.rating = QtWidgets.QLabel(self.widget_2)
        self.rating.setObjectName("rating")
        self.horizontalLayout_3.addWidget(self.rating)
        self.spinBox = QtWidgets.QSpinBox(self.widget_2)
        self.spinBox.setMinimum(0)
        self.spinBox.setMaximum(5)
        self.spinBox.setProperty("value", 0)
        self.spinBox.setDisplayIntegerBase(10)
        self.spinBox.setObjectName("spinBox")
        self.horizontalLayout_3.addWidget(self.spinBox)
        self.verticalLayout.addWidget(self.widget_2)
        self.verticalLayout.setStretch(0, 2)
        self.verticalLayout.setStretch(1, 1)
        self.verticalLayout.setStretch(2, 1)
        self.horizontalLayout.addWidget(self.widget_3)
        self.movieinfo = QtWidgets.QLabel(self.widget)
        self.movieinfo.setObjectName("movieinfo")
        self.horizontalLayout.addWidget(self.movieinfo)
        self.horizontalLayout.setStretch(0, 2)
        self.horizontalLayout.setStretch(1, 3)
        self.verticalLayout_2.addWidget(self.widget)
        self.similarMovie = QMyMovieGroupBox(MovieInfo)
        self.similarMovie.setObjectName("similarMovie")
        self.verticalLayout_2.addWidget(self.similarMovie)
        self.verticalLayout_2.setStretch(1, 2)
        self.verticalLayout_2.setStretch(2, 3)

        self.retranslateUi(MovieInfo)
        QtCore.QMetaObject.connectSlotsByName(MovieInfo)

    def retranslateUi(self, MovieInfo):
        _translate = QtCore.QCoreApplication.translate
        MovieInfo.setWindowTitle(_translate("MovieInfo", "电影详情"))
        self.movieImage.setText(_translate("MovieInfo", "海报"))
        self.ratingInfo.setText(_translate("MovieInfo", "评分： 4人看过，2人作出评价"))
        self.rating.setText(_translate("MovieInfo", "您的评价："))
        self.movieinfo.setText(_translate("MovieInfo", "名称：\n"
"\n"
"\n"
"上映时间：\n"
"\n"
"\n"
"类型：\n"
"\n"
"\n"
"电影简介：\n"
"\n"
"\n"
"IMDb链接："))
        self.similarMovie.setTitle(_translate("MovieInfo", "相似电影："))

from QMyMovieGroupBox import QMyMovieGroupBox
