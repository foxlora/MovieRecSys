# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/16 19:11'

from PyQt5.Qt import *
from ui.register import Ui_Form

class RegisterPane(QWidget,Ui_Form):

    exit_signal = pyqtSignal()
    reg_account_pwd_signal = pyqtSignal(str,str)


    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)

    def enable_regitser(self):
        '''
        激活注册按钮
        :return:
        '''
        account_text = self.accountLineEdit.text()
        password_text = self.pswLineEdit.text()
        confirm_psw_text = self.validpLineEdit.text()
        if account_text and password_text and confirm_psw_text:
            self.registerButton.setEnabled(True)
        else:
            self.registerButton.setEnabled(False)


    def register(self):
        '''
        点击注册按钮之后逻辑处理
        :param:
        :return:
        '''
        account_text = self.accountLineEdit.text()
        password_text = self.pswLineEdit.text()
        confirm_psw_text = self.validpLineEdit.text()

        if password_text != confirm_psw_text:
            '''
            两次输入的密码不匹配，重新输入
            '''
            self.pswLineEdit.setText("")
            self.validpLineEdit.setText("")
            QMessageBox.information(self,"两次输入的密码不匹配，请重新输入","",QMessageBox.Yes)

        else:
            self.reg_account_pwd_signal.emit(account_text,password_text)



    def back_pane(self):
        #发送退出信号
        self.exit_signal.emit()


if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = RegisterPane()
    window.exit_signal.connect(lambda :print('tuichu'))
    window.reg_account_pwd_signal.connect(lambda account,pwd:print(account,pwd))

    window.show()
    sys.exit(app.exec_())
