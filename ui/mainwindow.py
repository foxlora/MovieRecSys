# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'mainwindow.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_mainWindow(object):
    def setupUi(self, mainWindow):
        mainWindow.setObjectName("mainWindow")
        mainWindow.resize(778, 900)
        mainWindow.setMinimumSize(QtCore.QSize(300, 900))
        self.centralwidget = QtWidgets.QWidget(mainWindow)
        self.centralwidget.setMouseTracking(True)
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayout_21 = QtWidgets.QVBoxLayout(self.centralwidget)
        self.verticalLayout_21.setObjectName("verticalLayout_21")
        self.loginButton = QtWidgets.QPushButton(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.loginButton.sizePolicy().hasHeightForWidth())
        self.loginButton.setSizePolicy(sizePolicy)
        self.loginButton.setObjectName("loginButton")
        self.verticalLayout_21.addWidget(self.loginButton, 0, QtCore.Qt.AlignRight)
        self.widget = QtWidgets.QWidget(self.centralwidget)
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
        spacerItem = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.searchLineEdit = QtWidgets.QLineEdit(self.widget)
        self.searchLineEdit.setText("")
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
        spacerItem1 = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.horizontalLayout.setStretch(0, 1)
        self.horizontalLayout.setStretch(1, 7)
        self.horizontalLayout.setStretch(2, 1)
        self.horizontalLayout.setStretch(3, 1)
        self.verticalLayout_21.addWidget(self.widget)
        self.groupBox = QMyMovieGroupBox(self.centralwidget)
        self.groupBox.setMinimumSize(QtCore.QSize(400, 0))
        self.groupBox.setObjectName("groupBox")
        self.verticalLayout_21.addWidget(self.groupBox)
        self.groupBox_2 = QMyMovieGroupBox(self.centralwidget)
        self.groupBox_2.setMinimumSize(QtCore.QSize(400, 0))
        self.groupBox_2.setObjectName("groupBox_2")
        self.verticalLayout_21.addWidget(self.groupBox_2)
        mainWindow.setCentralWidget(self.centralwidget)
        self.statusbar = QtWidgets.QStatusBar(mainWindow)
        self.statusbar.setObjectName("statusbar")
        mainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(mainWindow)
        self.searchButton.clicked.connect(mainWindow.search)
        self.loginButton.clicked.connect(mainWindow.to_login)
        QtCore.QMetaObject.connectSlotsByName(mainWindow)

    def retranslateUi(self, mainWindow):
        _translate = QtCore.QCoreApplication.translate
        mainWindow.setWindowTitle(_translate("mainWindow", "电影推荐系统"))
        self.loginButton.setText(_translate("mainWindow", "登录/注册"))
        self.searchLineEdit.setWhatsThis(_translate("mainWindow", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'SimSun\'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">输入您想看的影片</p></body></html>"))
        self.searchLineEdit.setPlaceholderText(_translate("mainWindow", "输入你想看的影片"))
        self.searchButton.setText(_translate("mainWindow", "搜索"))
        self.groupBox.setTitle(_translate("mainWindow", "为您推荐："))
        self.groupBox_2.setTitle(_translate("mainWindow", "当前热门："))

from QMyMovieGroupBox import QMyMovieGroupBox
