# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'register.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Register(object):
    def setupUi(self, Register):
        Register.setObjectName("Register")
        Register.resize(663, 409)
        Register.setMinimumSize(QtCore.QSize(300, 300))
        self.horizontalLayout = QtWidgets.QHBoxLayout(Register)
        self.horizontalLayout.setObjectName("horizontalLayout")
        spacerItem = QtWidgets.QSpacerItem(191, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem)
        self.widget = QtWidgets.QWidget(Register)
        self.widget.setObjectName("widget")
        self.formLayout = QtWidgets.QFormLayout(self.widget)
        self.formLayout.setSizeConstraint(QtWidgets.QLayout.SetNoConstraint)
        self.formLayout.setLabelAlignment(QtCore.Qt.AlignCenter)
        self.formLayout.setFormAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignVCenter)
        self.formLayout.setHorizontalSpacing(8)
        self.formLayout.setVerticalSpacing(30)
        self.formLayout.setObjectName("formLayout")
        self.accountLabel = QtWidgets.QLabel(self.widget)
        self.accountLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.accountLabel.setObjectName("accountLabel")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.accountLabel)
        self.passwordLabel = QtWidgets.QLabel(self.widget)
        self.passwordLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.passwordLabel.setObjectName("passwordLabel")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.passwordLabel)
        self.passwordLabel_2 = QtWidgets.QLabel(self.widget)
        self.passwordLabel_2.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.passwordLabel_2.setObjectName("passwordLabel_2")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.LabelRole, self.passwordLabel_2)
        self.registerButton = QtWidgets.QPushButton(self.widget)
        self.registerButton.setEnabled(False)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.registerButton.sizePolicy().hasHeightForWidth())
        self.registerButton.setSizePolicy(sizePolicy)
        self.registerButton.setMinimumSize(QtCore.QSize(0, 25))
        self.registerButton.setObjectName("registerButton")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.SpanningRole, self.registerButton)
        self.accountLineEdit = QtWidgets.QLineEdit(self.widget)
        self.accountLineEdit.setObjectName("accountLineEdit")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.accountLineEdit)
        self.pwdLineEdit = QtWidgets.QLineEdit(self.widget)
        self.pwdLineEdit.setEchoMode(QtWidgets.QLineEdit.Password)
        self.pwdLineEdit.setObjectName("pwdLineEdit")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.pwdLineEdit)
        self.confirmLineEdit = QtWidgets.QLineEdit(self.widget)
        self.confirmLineEdit.setEchoMode(QtWidgets.QLineEdit.Password)
        self.confirmLineEdit.setObjectName("confirmLineEdit")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.FieldRole, self.confirmLineEdit)
        self.horizontalLayout.addWidget(self.widget)
        spacerItem1 = QtWidgets.QSpacerItem(191, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem1)
        self.accountLabel.setBuddy(self.accountLineEdit)
        self.passwordLabel.setBuddy(self.pwdLineEdit)
        self.passwordLabel_2.setBuddy(self.confirmLineEdit)

        self.retranslateUi(Register)
        self.registerButton.clicked.connect(Register.register)
        self.accountLineEdit.textChanged['QString'].connect(Register.enable_regitser)
        self.pwdLineEdit.textChanged['QString'].connect(Register.enable_regitser)
        self.confirmLineEdit.textChanged['QString'].connect(Register.enable_regitser)
        QtCore.QMetaObject.connectSlotsByName(Register)

    def retranslateUi(self, Register):
        _translate = QtCore.QCoreApplication.translate
        Register.setWindowTitle(_translate("Register", "账号注册"))
        self.accountLabel.setText(_translate("Register", "账    号："))
        self.passwordLabel.setText(_translate("Register", "密    码："))
        self.passwordLabel_2.setText(_translate("Register", "确认密码："))
        self.registerButton.setText(_translate("Register", "注册"))

