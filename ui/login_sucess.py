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
        LoginSucess.resize(600, 900)
        self.verticalLayout = QtWidgets.QVBoxLayout(LoginSucess)
        self.verticalLayout.setContentsMargins(0, 1, 1, 6)
        self.verticalLayout.setSpacing(25)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.label = QtWidgets.QLabel(LoginSucess)
        self.label.setMinimumSize(QtCore.QSize(30, 0))
        self.label.setIndent(0)
        self.label.setObjectName("label")
        self.horizontalLayout_2.addWidget(self.label, 0, QtCore.Qt.AlignLeft)
        self.pushButton_3 = QtWidgets.QPushButton(LoginSucess)
        self.pushButton_3.setObjectName("pushButton_3")
        self.horizontalLayout_2.addWidget(self.pushButton_3, 0, QtCore.Qt.AlignRight)
        self.pushButton_2 = QtWidgets.QPushButton(LoginSucess)
        self.pushButton_2.setObjectName("pushButton_2")
        self.horizontalLayout_2.addWidget(self.pushButton_2, 0, QtCore.Qt.AlignRight)
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
        self.lineEdit = QtWidgets.QLineEdit(self.widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(5)
        sizePolicy.setVerticalStretch(3)
        sizePolicy.setHeightForWidth(self.lineEdit.sizePolicy().hasHeightForWidth())
        self.lineEdit.setSizePolicy(sizePolicy)
        self.lineEdit.setObjectName("lineEdit")
        self.horizontalLayout.addWidget(self.lineEdit)
        self.pushButton = QtWidgets.QPushButton(self.widget)
        font = QtGui.QFont()
        font.setFamily("楷体")
        font.setPointSize(11)
        self.pushButton.setFont(font)
        self.pushButton.setStyleSheet("\n"
"color: rgb(255, 255, 255);")
        self.pushButton.setObjectName("pushButton")
        self.horizontalLayout.addWidget(self.pushButton)
        spacerItem2 = QtWidgets.QSpacerItem(36, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem2)
        self.horizontalLayout.setStretch(0, 1)
        self.horizontalLayout.setStretch(1, 7)
        self.horizontalLayout.setStretch(2, 1)
        self.horizontalLayout.setStretch(3, 1)
        self.verticalLayout.addWidget(self.widget)
        self.groupBox = QtWidgets.QGroupBox(LoginSucess)
        self.groupBox.setObjectName("groupBox")
        self.verticalLayout.addWidget(self.groupBox)
        self.groupBox_2 = QtWidgets.QGroupBox(LoginSucess)
        self.groupBox_2.setObjectName("groupBox_2")
        self.verticalLayout.addWidget(self.groupBox_2)
        self.verticalLayout.setStretch(2, 4)
        self.verticalLayout.setStretch(3, 4)

        self.retranslateUi(LoginSucess)
        self.pushButton_3.pressed.connect(LoginSucess.to_footprint)
        self.pushButton_2.pressed.connect(LoginSucess.to_mainwindow)
        self.pushButton.pressed.connect(LoginSucess.to_movieinfo)
        QtCore.QMetaObject.connectSlotsByName(LoginSucess)

    def retranslateUi(self, LoginSucess):
        _translate = QtCore.QCoreApplication.translate
        LoginSucess.setWindowTitle(_translate("LoginSucess", "电影推荐系统"))
        self.label.setText(_translate("LoginSucess", "账号："))
        self.pushButton_3.setText(_translate("LoginSucess", "我的足迹"))
        self.pushButton_2.setText(_translate("LoginSucess", "登出"))
        self.lineEdit.setWhatsThis(_translate("LoginSucess", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'SimSun\'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">输入您想看的影片</p></body></html>"))
        self.lineEdit.setText(_translate("LoginSucess", "输入你想看的影片"))
        self.pushButton.setText(_translate("LoginSucess", "搜索"))
        self.groupBox.setTitle(_translate("LoginSucess", "为您推荐："))
        self.groupBox_2.setTitle(_translate("LoginSucess", "当前热门："))

