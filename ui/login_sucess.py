# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'login_sucess.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_LoginSucess(object):
    def setupUi(self, LoginSucess):
        LoginSucess.setObjectName("LoginSucess")
        LoginSucess.resize(800, 900)
        self.verticalLayout = QtWidgets.QVBoxLayout(LoginSucess)
        self.verticalLayout.setContentsMargins(0, 1, 1, 6)
        self.verticalLayout.setSpacing(25)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setContentsMargins(-1, -1, -1, 3)
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.accountLabel = QtWidgets.QLabel(LoginSucess)
        self.accountLabel.setMinimumSize(QtCore.QSize(30, 0))
        self.accountLabel.setIndent(0)
        self.accountLabel.setObjectName("accountLabel")
        self.horizontalLayout_2.addWidget(self.accountLabel, 0, QtCore.Qt.AlignLeft)
        self.footprintPushButton = QtWidgets.QPushButton(LoginSucess)
        self.footprintPushButton.setEnabled(True)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.footprintPushButton.sizePolicy().hasHeightForWidth())
        self.footprintPushButton.setSizePolicy(sizePolicy)
        self.footprintPushButton.setSizeIncrement(QtCore.QSize(11, 12))
        self.footprintPushButton.setAutoDefault(False)
        self.footprintPushButton.setDefault(False)
        self.footprintPushButton.setFlat(False)
        self.footprintPushButton.setObjectName("footprintPushButton")
        self.horizontalLayout_2.addWidget(self.footprintPushButton, 0, QtCore.Qt.AlignRight)
        self.logoutPushButton = QtWidgets.QPushButton(LoginSucess)
        self.logoutPushButton.setObjectName("logoutPushButton")
        self.horizontalLayout_2.addWidget(self.logoutPushButton, 0, QtCore.Qt.AlignRight)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.widget = QtWidgets.QWidget(LoginSucess)
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
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(5)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.searchLineEdit.sizePolicy().hasHeightForWidth())
        self.searchLineEdit.setSizePolicy(sizePolicy)
        self.searchLineEdit.setText("")
        self.searchLineEdit.setObjectName("searchLineEdit")
        self.horizontalLayout.addWidget(self.searchLineEdit)
        self.searchPushButton = QtWidgets.QPushButton(self.widget)
        font = QtGui.QFont()
        font.setFamily("楷体")
        font.setPointSize(11)
        self.searchPushButton.setFont(font)
        self.searchPushButton.setStyleSheet("\n"
"color: rgb(255, 255, 255);")
        self.searchPushButton.setObjectName("searchPushButton")
        self.horizontalLayout.addWidget(self.searchPushButton)
        spacerItem2 = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem2)
        self.horizontalLayout.setStretch(0, 1)
        self.horizontalLayout.setStretch(2, 1)
        self.horizontalLayout.setStretch(3, 1)
        self.verticalLayout.addWidget(self.widget)
        self.RecomBox = QMyMovieGroupBox(LoginSucess)
        self.RecomBox.setObjectName("RecomBox")
        self.verticalLayout.addWidget(self.RecomBox)
        self.HotRecomBox = QMyMovieGroupBox(LoginSucess)
        self.HotRecomBox.setObjectName("HotRecomBox")
        self.verticalLayout.addWidget(self.HotRecomBox)
        self.verticalLayout.setStretch(2, 4)
        self.verticalLayout.setStretch(3, 4)

        self.retranslateUi(LoginSucess)
        self.footprintPushButton.pressed.connect(LoginSucess.to_footprint)
        self.logoutPushButton.pressed.connect(LoginSucess.to_mainwindow)
        self.searchPushButton.pressed.connect(LoginSucess.to_movieinfo)
        QtCore.QMetaObject.connectSlotsByName(LoginSucess)

    def retranslateUi(self, LoginSucess):
        _translate = QtCore.QCoreApplication.translate
        LoginSucess.setWindowTitle(_translate("LoginSucess", "电影推荐系统"))
        self.accountLabel.setText(_translate("LoginSucess", "账号："))
        self.footprintPushButton.setText(_translate("LoginSucess", "我的足迹"))
        self.logoutPushButton.setText(_translate("LoginSucess", "登出"))
        self.searchLineEdit.setWhatsThis(_translate("LoginSucess", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'SimSun\'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">输入您想看的影片</p></body></html>"))
        self.searchLineEdit.setPlaceholderText(_translate("LoginSucess", "输入你想看的影片"))
        self.searchPushButton.setText(_translate("LoginSucess", "搜索"))
        self.RecomBox.setTitle(_translate("LoginSucess", "为您推荐："))
        self.HotRecomBox.setTitle(_translate("LoginSucess", "当前热门："))

from QMyMovieGroupBox import QMyMovieGroupBox
