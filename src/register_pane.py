# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/16 19:11'

from PyQt5.Qt import *
from ui.register import Ui_Register
from preparation.fetch_movie_info import FetchFromMySql

class RegisterPane(QWidget,Ui_Register):


    reg_account_pwd_signal = pyqtSignal(str,str)


    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)

    def enable_regitser(self):
        '''
        激活注册按钮
        :return:
        '''
        account = self.accountLineEdit.text()
        pwd = self.pwdLineEdit.text()
        confirm_pwd = self.confirmLineEdit.text()
        if account and pwd and confirm_pwd:
            self.registerButton.setEnabled(True)




    def register(self):
        '''
        点击注册按钮之后逻辑处理
        :param:
        :return:
        '''
        account = self.accountLineEdit.text()
        pwd = self.pwdLineEdit.text()
        confirm_pwd = self.confirmLineEdit.text()
        fetchinfo = FetchFromMySql()

        if pwd != confirm_pwd:
            '''
            两次输入的密码不匹配，重新输入
            '''
            self.pwdLineEdit.setText("")
            self.confirmLineEdit.setText("")
            QMessageBox.information(self,"两次输入的密码不匹配，请重新输入","",QMessageBox.Yes)

        else:
            sql = f'select password FROM MovieRecommender.users WHERE userid = "{account}"'

            pwd_mysql = fetchinfo.execute_sql(sql)
            if pwd_mysql:#已有账号，显示账号已被注册
                QMessageBox.information(self, "此账号已被注册，请修改账号", "", QMessageBox.Yes)
            else:
                sql_insert = f'INSERT INTO MovieRecommender.users (userid,password) VALUES ("{account}","{pwd}")'
                fetchinfo.execute_sql(sql_insert)
                fetchinfo.conn.commit()

                with open("../data/users.csv", mode='a+') as f:
                    f.write(f"{account},{pwd}\n")
                self.reg_account_pwd_signal.emit(account,pwd)



    def back_pane(self):
        #发送退出信号
        self.exit_signal.emit()



if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = RegisterPane()

    window.reg_account_pwd_signal.connect(lambda account,pwd:print(account,pwd))

    window.show()
    sys.exit(app.exec_())
