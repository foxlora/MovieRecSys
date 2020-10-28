# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 14:29'

from PyQt5.Qt import *
from ui.movie_info import Ui_MovieInfo
from preparation.fetch_movie_info import FetchFromMySql
from utils.tosql import FetchInFoFromSql
import time

class MovieInfoPane(QWidget,Ui_MovieInfo):




    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)
        self.similarMovie.initUI()
        self.uid = None


    def init_ui(self,movie):
        self.movie = movie
        fetchmovieinfo = FetchFromMySql()
        movie_image_path = fetchmovieinfo.get_movie_image(movie)
        movie_rating_times,movie_mean_rating = fetchmovieinfo.get_movie_ratinginfo(movie)
        title, date, genres, briefinfo, url_imdbid = fetchmovieinfo.get_movie_briefinfo(movie)

        pixmap = QPixmap(movie_image_path)
        self.movieImage.setPixmap(pixmap)
        self.movieImage.setMinimumSize(QSize(80, 120))

        self.ratingInfo.setText(f"评分： {movie_rating_times}人已评价，平均分{movie_mean_rating}")

        self.rating.setText("您的评价：")

        self.movieinfo.setText(f"名称：{title}\n\n\n上映时间：{date}\n\n\n类型：{genres}\n\n\n电影简介：{briefinfo}\n\n\nIMDb链接：{url_imdbid}")
        self.movieinfo.setWordWrap(True)
        self.doubleSpinBox.setValue(0.0)
        self.account.setText('')



        self.similarMovie.updateUI(self.get_kneighbors_byId(movie))
        for index in range(10):
            eval(f'self.similarMovie.button{index}_1_clicked.connect(self.movieinfo_to_similar)')

    def update_ui(self,movie):
        self.movie = movie
        fetchmovieinfo = FetchFromMySql()
        movie_image_path = fetchmovieinfo.get_movie_image(movie)
        movie_rating_times, movie_mean_rating = fetchmovieinfo.get_movie_ratinginfo(movie)
        title, date, genres, briefinfo, url_imdbid = fetchmovieinfo.get_movie_briefinfo(movie)
        pixmap = QPixmap(movie_image_path)
        self.movieImage.setPixmap(pixmap)
        self.doubleSpinBox.setValue(0.0)
        self.ratingInfo.setText(f"评分： {movie_rating_times}人已评价，平均分{movie_mean_rating}")
        self.movieinfo.setText(f"名称：{title}\n\n\n上映时间：{date}\n\n\n类型：{genres}\n\n\n电影简介：{briefinfo}\n\n\nIMDb链接：{url_imdbid}")
        self.similarMovie.updateUI(self.get_kneighbors_byId(movie))


    def movieinfo_to_similar(self,movie):
        self.update_ui(movie)

    def complete_rating(self):
        rating_value = self.doubleSpinBox.value()
        timestamp = int(time.time())
        if 0 < rating_value <= 5.0 :#做出评价，保存在rating.csv
            print(f"用户{self.uid}已对影片{self.movie}做出评价：{rating_value}")
            #如果未登录，提示先登录，如果已经登录，则把评价保存到rating.csv文件 1,1,4.0,964982703
            if self.uid:
                with open('../data/ratings.csv',mode='a+') as f:
                    f.write(f'{self.uid},{self.movie},{rating_value},{timestamp}\n')

                #将评分实时写入到数据库
                fetchinfo = FetchInFoFromSql()
                sql = f'INSERT INTO MovieRecommender.ratings (userId, movieId, rating, timestamp) VALUES ("{self.uid}","{self.movie}",{rating_value},{timestamp})'
                fetchinfo.execute_sql(sql)
                fetchinfo.conn.commit()



            else:
                QMessageBox.information(self, "请先登录再评价", "", QMessageBox.Yes)



    def get_kneighbors_byId(self,movieId):
        fetchinfo = FetchInFoFromSql()
        try:
            sql = f'SELECT k_nearest_neighbors FROM MovieRecommender.knn_predictions WHERE movieId = {movieId}'
            data = fetchinfo.execute_sql(sql)
            k_nearest_neighbors = eval("["+data[0][0]+"]")
            return k_nearest_neighbors[:10]
            
        except:
            return None








if __name__ == "__main__":
    import sys
    #创建应用程序对象
    app = QApplication(sys.argv)
    window = MovieInfoPane()
    window.uid = "foxlora"


    window.init_ui('356')

    window.show()
    sys.exit(app.exec_())
