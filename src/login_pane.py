# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 10:59'

from PyQt5.Qt import *
from ui.login import Ui_Login

class LoginPane(QWidget,Ui_Login):

    #定义信号
    to_register_signal = pyqtSignal()
    to_mainwindow_signal = pyqtSignal()
    to_loginsuccess_signal = pyqtSignal()

    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)

    def login_button_vaild(self):
        account_text = self.accountLineEdit.text()
        pwd_text = self.pwdLineEdit.text()
        if account_text and pwd_text:
            self.loginButton.setEnabled(True)

    def show_register(self):
        self.to_register_signal.emit()
    def show_login_sucess(self):
        #密码验证成功

        self.to_loginsuccess_signal.emit()
    def show_mainwindow(self):
        self.to_mainwindow_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = LoginPane()
    window.show()
    sys.exit(app.exec_())

