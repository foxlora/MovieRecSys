# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'footprint.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_FootPrint(object):
    def setupUi(self, FootPrint):
        FootPrint.setObjectName("FootPrint")
        FootPrint.resize(800, 900)
        self.verticalLayout = QtWidgets.QVBoxLayout(FootPrint)
        self.verticalLayout.setContentsMargins(-1, 14, -1, 17)
        self.verticalLayout.setSpacing(33)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.account = QtWidgets.QLabel(FootPrint)
        self.account.setMinimumSize(QtCore.QSize(30, 0))
        self.account.setIndent(0)
        self.account.setObjectName("account")
        self.horizontalLayout_2.addWidget(self.account, 0, QtCore.Qt.AlignLeft)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.footPrintBox = QMyMovieGroupBox(FootPrint)
        self.footPrintBox.setEnabled(True)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(5)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.footPrintBox.sizePolicy().hasHeightForWidth())
        self.footPrintBox.setSizePolicy(sizePolicy)
        self.footPrintBox.setObjectName("footPrintBox")
        self.verticalLayout.addWidget(self.footPrintBox)
        self.verticalLayout.setStretch(1, 1)

        self.retranslateUi(FootPrint)
        QtCore.QMetaObject.connectSlotsByName(FootPrint)

    def retranslateUi(self, FootPrint):
        _translate = QtCore.QCoreApplication.translate
        FootPrint.setWindowTitle(_translate("FootPrint", "您的足迹"))
        self.account.setText(_translate("FootPrint", "账号："))
        self.footPrintBox.setTitle(_translate("FootPrint", "您过去看过："))

from QMyMovieGroupBox import QMyMovieGroupBox
