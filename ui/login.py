# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'login.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Login(object):
    def setupUi(self, Login):
        Login.setObjectName("Login")
        Login.setEnabled(True)
        Login.resize(600, 400)
        self.verticalLayout = QtWidgets.QVBoxLayout(Login)
        self.verticalLayout.setObjectName("verticalLayout")
        self.ToMainWindowButton = QtWidgets.QPushButton(Login)
        self.ToMainWindowButton.setEnabled(True)
        self.ToMainWindowButton.setObjectName("ToMainWindowButton")
        self.verticalLayout.addWidget(self.ToMainWindowButton, 0, QtCore.Qt.AlignRight)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.formLayout = QtWidgets.QFormLayout()
        self.formLayout.setLabelAlignment(QtCore.Qt.AlignCenter)
        self.formLayout.setContentsMargins(-1, 100, 0, -1)
        self.formLayout.setHorizontalSpacing(16)
        self.formLayout.setVerticalSpacing(23)
        self.formLayout.setObjectName("formLayout")
        self.accountLabel = QtWidgets.QLabel(Login)
        self.accountLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.accountLabel.setObjectName("accountLabel")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.accountLabel)
        self.accountLineEdit = QtWidgets.QLineEdit(Login)
        self.accountLineEdit.setMinimumSize(QtCore.QSize(0, 25))
        self.accountLineEdit.setClearButtonEnabled(True)
        self.accountLineEdit.setObjectName("accountLineEdit")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.accountLineEdit)
        self.passwordLabel = QtWidgets.QLabel(Login)
        self.passwordLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.passwordLabel.setObjectName("passwordLabel")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.passwordLabel)
        self.pwdLineEdit = QtWidgets.QLineEdit(Login)
        self.pwdLineEdit.setEnabled(True)
        self.pwdLineEdit.setMinimumSize(QtCore.QSize(0, 25))
        self.pwdLineEdit.setAutoFillBackground(False)
        self.pwdLineEdit.setInputMask("")
        self.pwdLineEdit.setText("")
        self.pwdLineEdit.setEchoMode(QtWidgets.QLineEdit.Password)
        self.pwdLineEdit.setPlaceholderText("")
        self.pwdLineEdit.setClearButtonEnabled(True)
        self.pwdLineEdit.setObjectName("pwdLineEdit")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.pwdLineEdit)
        self.loginButton = QtWidgets.QPushButton(Login)
        self.loginButton.setEnabled(False)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.loginButton.sizePolicy().hasHeightForWidth())
        self.loginButton.setSizePolicy(sizePolicy)
        self.loginButton.setMinimumSize(QtCore.QSize(0, 25))
        self.loginButton.setObjectName("loginButton")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.SpanningRole, self.loginButton)
        self.horizontalLayout.addLayout(self.formLayout)
        spacerItem1 = QtWidgets.QSpacerItem(119, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.registerButton = QtWidgets.QPushButton(Login)
        self.registerButton.setObjectName("registerButton")
        self.verticalLayout.addWidget(self.registerButton, 0, QtCore.Qt.AlignLeft)

        self.retranslateUi(Login)
        self.registerButton.clicked.connect(Login.show_register)
        self.loginButton.clicked.connect(Login.show_login_sucess)
        self.ToMainWindowButton.clicked.connect(Login.show_mainwindow)
        self.accountLineEdit.textChanged['QString'].connect(Login.login_button_vaild)
        self.pwdLineEdit.textChanged['QString'].connect(Login.login_button_vaild)
        QtCore.QMetaObject.connectSlotsByName(Login)

    def retranslateUi(self, Login):
        _translate = QtCore.QCoreApplication.translate
        Login.setWindowTitle(_translate("Login", "Login"))
        self.ToMainWindowButton.setText(_translate("Login", "返回主界面"))
        self.accountLabel.setText(_translate("Login", "账    号："))
        self.passwordLabel.setText(_translate("Login", "密    码："))
        self.loginButton.setText(_translate("Login", "登录"))
        self.registerButton.setText(_translate("Login", "注册账号"))

