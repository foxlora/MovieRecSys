# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'movie_search.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MovieSearch(object):
    def setupUi(self, MovieSearch):
        MovieSearch.setObjectName("MovieSearch")
        MovieSearch.resize(800, 900)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(MovieSearch)
        self.verticalLayout_2.setContentsMargins(15, 6, 14, 16)
        self.verticalLayout_2.setSpacing(32)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.accountLabel = QtWidgets.QLabel(MovieSearch)
        self.accountLabel.setMinimumSize(QtCore.QSize(30, 0))
        self.accountLabel.setIndent(0)
        self.accountLabel.setObjectName("accountLabel")
        self.horizontalLayout_2.addWidget(self.accountLabel, 0, QtCore.Qt.AlignLeft)
        self.backButton = QtWidgets.QPushButton(MovieSearch)
        self.backButton.setObjectName("backButton")
        self.horizontalLayout_2.addWidget(self.backButton, 0, QtCore.Qt.AlignRight)
        self.verticalLayout_2.addLayout(self.horizontalLayout_2)
        self.widget = QtWidgets.QWidget(MovieSearch)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.widget.sizePolicy().hasHeightForWidth())
        self.widget.setSizePolicy(sizePolicy)
        self.widget.setMinimumSize(QtCore.QSize(0, 22))
        self.widget.setMaximumSize(QtCore.QSize(16777215, 55))
        self.widget.setObjectName("widget")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.widget)
        self.horizontalLayout.setSizeConstraint(QtWidgets.QLayout.SetDefaultConstraint)
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout.setSpacing(6)
        self.horizontalLayout.setObjectName("horizontalLayout")
        spacerItem1 = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.searchLineEdit = QtWidgets.QLineEdit(self.widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(3)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.searchLineEdit.sizePolicy().hasHeightForWidth())
        self.searchLineEdit.setSizePolicy(sizePolicy)
        self.searchLineEdit.setObjectName("searchLineEdit")
        self.horizontalLayout.addWidget(self.searchLineEdit)
        self.searchButton = QtWidgets.QPushButton(self.widget)
        font = QtGui.QFont()
        font.setFamily("楷体")
        font.setPointSize(11)
        self.searchButton.setFont(font)
        self.searchButton.setStyleSheet("\n"
"color: rgb(255, 255, 255);")
        self.searchButton.setObjectName("searchButton")
        self.horizontalLayout.addWidget(self.searchButton)
        spacerItem2 = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem2)
        self.horizontalLayout.setStretch(0, 1)
        self.horizontalLayout.setStretch(1, 7)
        self.horizontalLayout.setStretch(2, 1)
        self.horizontalLayout.setStretch(3, 1)
        self.verticalLayout_2.addWidget(self.widget)
        self.keywrodBox = QMyMovieGroupBox(MovieSearch)
        self.keywrodBox.setObjectName("keywrodBox")
        self.verticalLayout_2.addWidget(self.keywrodBox)
        self.verticalLayout_2.setStretch(2, 1)

        self.retranslateUi(MovieSearch)
        self.searchButton.clicked.connect(MovieSearch.search_movie)
        self.backButton.clicked.connect(MovieSearch.back_mainwindow)
        QtCore.QMetaObject.connectSlotsByName(MovieSearch)

    def retranslateUi(self, MovieSearch):
        _translate = QtCore.QCoreApplication.translate
        MovieSearch.setWindowTitle(_translate("MovieSearch", "电影搜索"))
        self.accountLabel.setText(_translate("MovieSearch", "账号："))
        self.backButton.setText(_translate("MovieSearch", "返回"))
        self.searchLineEdit.setWhatsThis(_translate("MovieSearch", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'SimSun\'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">输入您想看的影片</p></body></html>"))
        self.searchLineEdit.setText(_translate("MovieSearch", "title"))
        self.searchButton.setText(_translate("MovieSearch", "搜索"))
        self.keywrodBox.setTitle(_translate("MovieSearch", "包含关键词\'\'的电影"))

from QMyMovieGroupBox import QMyMovieGroupBox
