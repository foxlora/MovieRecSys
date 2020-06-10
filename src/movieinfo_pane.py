# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/17 14:29'

from PyQt5.Qt import *
from ui.movie_info import Ui_MovieInfo
from src.fetch_movie_info import FetchFromMySql
from utils.tosql import FetchInFoFromSql

class MovieInfoPane(QWidget,Ui_MovieInfo):




    def __init__(self,parent=None,*args,**kwargs):
        super().__init__(parent=parent,*args,**kwargs)
        self.setupUi(self)
        self.similarMovie.initUI()


    def init_ui(self,movie):
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


        self.similarMovie.updateUI(self.get_kneighbors_byId(movie))
        for index in range(10):
            eval(f'self.similarMovie.button{index}_1_clicked.connect(self.movieinfo_to_similar)')

    def update_ui(self,movie):
        fetchmovieinfo = FetchFromMySql()
        movie_image_path = fetchmovieinfo.get_movie_image(movie)
        movie_rating_times, movie_mean_rating = fetchmovieinfo.get_movie_ratinginfo(movie)
        title, date, genres, briefinfo, url_imdbid = fetchmovieinfo.get_movie_briefinfo(movie)
        pixmap = QPixmap(movie_image_path)
        self.movieImage.setPixmap(pixmap)

        self.ratingInfo.setText(f"评分： {movie_rating_times}人已评价，平均分{movie_mean_rating}")
        self.movieinfo.setText(f"名称：{title}\n\n\n上映时间：{date}\n\n\n类型：{genres}\n\n\n电影简介：{briefinfo}\n\n\nIMDb链接：{url_imdbid}")
        self.similarMovie.updateUI(self.get_kneighbors_byId(movie))

    def movieinfo_to_similar(self,movie):
        print(movie)
        self.update_ui(movie)


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
    window.init_ui('11')


    window.show()
    sys.exit(app.exec_())
