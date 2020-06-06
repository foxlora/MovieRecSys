

from src.login_pane import LoginPane
from src.register_pane import RegisterPane
from src.mainwindow_pane import MainWindowPane
from src.movieinfo_pane import MovieInfoPane
from src.login_sucess_pane import LoginSucessPane
from src.moviesearch_pane import MovieSearchPane


from PyQt5.Qt import *






if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)

    #实例化控件面板
    register_pane = RegisterPane()
    login_pane = LoginPane()
    mainwindow_pane = MainWindowPane()
    loginsucess_pane = LoginSucessPane()
    movieinfo_pane = MovieInfoPane()
    moviesearch_pane = MovieSearchPane()


    #创建槽函数
    def login_to_main():
        login_pane.hide()
        mainwindow_pane.show()

    def login_to_logsucess():
        login_pane.hide()
        loginsucess_pane.show()

    def login_to_register():
        login_pane.hide()
        register_pane.show()

    def loginsucess_to_movieinfo():
        loginsucess_pane.hide()
        movieinfo_pane.show()

    def loginsucess_to_main():
        loginsucess_pane.hide()
        mainwindow_pane.show()

    def loginsucess_to_movieinfo():
        loginsucess_pane.hide()
        movieinfo_pane.show()




    def main_to_moviesearch(search_text):
        moviesearch_pane.searchLineEdit.setText(search_text)
        moviesearch_pane.keywrodBox.setTitle(f'包含关键词{search_text}的电影')
        moviesearch_pane.init_ui(search_text)
        moviesearch_pane.show()
        mainwindow_pane.hide()

    def main_to_login():
        login_pane.show()
        mainwindow_pane.hide()

    def show_login_pane():
        '''
        显示登录界面
        :param parent:
        :return:
        '''
        login_pane = LoginPane(register_pane)
        login_pane.move(0,register_pane.height())
        login_pane.show()

        animation = QPropertyAnimation(login_pane)
        animation.setTargetObject(login_pane)
        animation.setPropertyName(b"pos")
        animation.setStartValue(login_pane.pos())
        animation.setEndValue(QPoint(0,0))
        animation.setDuration(500)
        animation.setEasingCurve(QEasingCurve.OutBounce)
        animation.start(QAbstractAnimation.DeleteWhenStopped)

    def show_mainwindow_pane():
        '''
        显示主界面
        :return:
        '''
        mainwindow_pane = MainWindowPane(register_pane)
        mainwindow_pane.show()


    mainwindow_pane.login_signal.connect(main_to_login)
    mainwindow_pane.search_signal.connect(main_to_moviesearch)

    login_pane.to_mainwindow_signal.connect(login_to_main)
    login_pane.to_loginsuccess_signal.connect(login_to_logsucess)
    login_pane.to_register_signal.connect(login_to_register)

    register_pane.reg_account_pwd_signal.connect(show_login_pane)
    register_pane.exit_signal.connect(show_mainwindow_pane)
    mainwindow_pane.show()

    sys.exit(app.exec_())
