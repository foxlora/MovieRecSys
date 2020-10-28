# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 10:59'

from PyQt5.Qt import *
from ui.login import Ui_Login
from preparation.fetch_movie_info import FetchFromMySql

class LoginPane(QWidget,Ui_Login):

    #定义信号
    to_register_signal = pyqtSignal()
    to_mainwindow_signal = pyqtSignal()
    to_loginsuccess_signal = pyqtSignal(str,str)

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
        fetchinfo = FetchFromMySql()
        account = self.accountLineEdit.text()
        pwd = self.pwdLineEdit.text()
        sql = f'select * FROM MovieRecommender.users WHERE userid = "{account}" and password = "{pwd}"'

        pwd_mysql = fetchinfo.execute_sql(sql)
        if not pwd_mysql:#没有正确查询到账号密码
            QMessageBox.information(self, "账号或密码不正确，请重新输入", "", QMessageBox.Yes)
            self.pwdLineEdit.setText('')
        else:
            self.to_loginsuccess_signal.emit(account,pwd)

    def show_mainwindow(self):
        self.to_mainwindow_signal.emit()





if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = LoginPane()
    window.to_loginsuccess_signal.connect(lambda account,pwd:print(account,pwd))
    window.show()
    sys.exit(app.exec_())

