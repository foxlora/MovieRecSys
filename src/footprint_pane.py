# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/6/13 13:55'


from PyQt5.Qt import *
from ui.footprint import Ui_FootPrint
from utils.tosql import FetchInFoFromSql
import time

class FootPrintPane(QWidget,Ui_FootPrint):




    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)
        self.uid = None
        self.footPrintBox.initUI()


    def init_ui(self):
        self.account.setText(f"账号：{self.uid}")
        rated_movies = self.get_rated_movies() #[('356', 5.0), ('318', 5.0), ('152083', 1.5), ('152083', 1.5)]
        movies_list = [movie for (movie,raing,timestamp) in rated_movies]
        self.footPrintBox.updateUI(movies_list=movies_list)
        for index,(movie,rating,timestamp) in enumerate(rated_movies):
            timeArray = time.localtime(timestamp)
            otherStyleTime = time.strftime("%Y--%m--%d %H:%M:%S", timeArray)
            movie_text = eval(f'self.footPrintBox.button{index}_1.text()')
            movie_text = movie_text + f'\n您的评分：{rating}\n评分时间：{otherStyleTime}'


            eval(f'self.footPrintBox.button{index}_1.setText(movie_text)')


    def get_rated_movies(self):
        fetchinfo = FetchInFoFromSql()
        try:
            sql = f'select movieId,rating,timestamp from MovieRecommender.ratings where userId = "{self.uid}" ORDER BY timestamp DESC LIMIT 0,10'
            data = fetchinfo.execute_sql(sql)
            rated_movies = [movie for movie in data]
            return rated_movies


        except:
            return None



if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = FootPrintPane()

    window.uid = "foxlora"

    window.init_ui()
    window.show()
    sys.exit(app.exec_())
