# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'register.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(734, 476)
        Form.setMinimumSize(QtCore.QSize(300, 300))
        self.horizontalLayout = QtWidgets.QHBoxLayout(Form)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.formLayout = QtWidgets.QFormLayout()
        self.formLayout.setContentsMargins(-1, -1, 0, -1)
        self.formLayout.setHorizontalSpacing(16)
        self.formLayout.setVerticalSpacing(22)
        self.formLayout.setObjectName("formLayout")
        self.accountLabel = QtWidgets.QLabel(Form)
        self.accountLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.accountLabel.setObjectName("accountLabel")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.accountLabel)
        self.accountLineEdit = QtWidgets.QLineEdit(Form)
        self.accountLineEdit.setMinimumSize(QtCore.QSize(0, 25))
        self.accountLineEdit.setClearButtonEnabled(True)
        self.accountLineEdit.setObjectName("accountLineEdit")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.accountLineEdit)
        self.passwordLabel = QtWidgets.QLabel(Form)
        self.passwordLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.passwordLabel.setObjectName("passwordLabel")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.passwordLabel)
        self.pswLineEdit = QtWidgets.QLineEdit(Form)
        self.pswLineEdit.setMinimumSize(QtCore.QSize(0, 25))
        self.pswLineEdit.setClearButtonEnabled(True)
        self.pswLineEdit.setObjectName("pswLineEdit")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.pswLineEdit)
        self.validpLabel = QtWidgets.QLabel(Form)
        self.validpLabel.setStyleSheet("font: 9pt \"方正粗黑宋简体\";\n"
"\n"
"color: rgb(103, 103, 103);")
        self.validpLabel.setObjectName("validpLabel")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.LabelRole, self.validpLabel)
        self.validpLineEdit = QtWidgets.QLineEdit(Form)
        self.validpLineEdit.setMinimumSize(QtCore.QSize(0, 25))
        self.validpLineEdit.setClearButtonEnabled(True)
        self.validpLineEdit.setObjectName("validpLineEdit")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.FieldRole, self.validpLineEdit)
        self.registerButton = QtWidgets.QPushButton(Form)
        self.registerButton.setEnabled(False)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.registerButton.sizePolicy().hasHeightForWidth())
        self.registerButton.setSizePolicy(sizePolicy)
        self.registerButton.setMinimumSize(QtCore.QSize(0, 25))
        self.registerButton.setObjectName("registerButton")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.SpanningRole, self.registerButton)
        self.horizontalLayout.addLayout(self.formLayout)
        self.backButton = QtWidgets.QPushButton(Form)
        self.backButton.setStyleSheet("font: 11pt \"黑体\";\n"
"")
        self.backButton.setObjectName("backButton")
        self.horizontalLayout.addWidget(self.backButton)

        self.retranslateUi(Form)
        self.registerButton.clicked.connect(Form.register)
        self.backButton.clicked.connect(Form.back_pane)
        self.accountLineEdit.textChanged['QString'].connect(Form.enable_regitser)
        self.pswLineEdit.textChanged['QString'].connect(Form.enable_regitser)
        self.validpLineEdit.textChanged['QString'].connect(Form.enable_regitser)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.accountLabel.setText(_translate("Form", "账    号："))
        self.passwordLabel.setText(_translate("Form", "密    码："))
        self.validpLabel.setText(_translate("Form", "确认密码："))
        self.registerButton.setText(_translate("Form", "注册"))
        self.backButton.setText(_translate("Form", "返回"))

