# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/21 10:43'

import io
from PIL import Image


from lxml import etree

from utils.tosql import dftosql
import requests
import re
import pandas as pd
import threading
from queue import Queue
import os
from utils.tosql import FetchInFoFromSql

class FetchMovieInfo:
    def __init__(self):

        # self.conn, self.cur = ConnectSql()
        self.links_df = pd.read_csv('../data/links.csv',header=0,dtype=str)
        self.movies_df = pd.read_csv('../data/movies.csv',header=0,dtype=str)
        self.moviesinfo_df = pd.read_csv('../data/moviesinfo.csv',header=0,dtype=str)

    def get_movie_url(self,movieId):
        '''
        :param movieid:
        :return: url_imdbid
        根据movieid得到对应的网页链接
        '''
        # 抓取movieid对应的imdbid

        # self.cur.execute("select imdbid from MovieRecommender.links where movieId = {}".format(movieId))
        # imdbid = str(self.cur.fetchall()[0][0])



        imdbid = self.links_df.loc[self.links_df.movieId == movieId,'imdbId'].tolist()[0]



        imdbid = "0" * (7 - len(imdbid)) + imdbid
        url_imdbid = "http://www.imdb.com/title/tt{}/".format(imdbid)

        return url_imdbid

    def get_movie_image(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''
        image_url = self.moviesinfo_df.loc[self.moviesinfo_df.movieId == str(movieId), 'image_url'].tolist()[0]
        movie_image = self.get_image(image_url,movieId)
        return movie_image

    def get_movie_title(self,movieId):
        '''
        获取电影标题
        :param movieId:
        :return:
        '''

        try:
            title = self.moviesinfo_df.loc[self.moviesinfo_df.movieId == str(movieId), 'title'].tolist()[0]
        except Exception as e:
            print(e)
            title = ' '


        return title


    def get_movie_date(self,movieId):
        '''
        获取电影年代
        :param movieId:
        :return:
        '''
        try:
            date = self.moviesinfo_df.loc[self.moviesinfo_df.movieId == str(movieId), 'date'].tolist()[0]
        except:
            date = ''
        return date


    def get_movie_info(self,url,movieId):
        """
        :param url:
        :return: image_src,title,date,genres
        根据网页连接和数据库，抓取电影海报地址，电影名称，电影上映时间，电影类型
        """
        try:
            html = requests.get(url)
            bs = etree.HTML(html.text)
            image_src = bs.xpath('//link[@rel="image_src"]/@href')[0]

            text = bs.xpath('//script[@type="application/ld+json"]')[0].text
            briefinfo = re.findall('^.*?"description": "(.*?)",\n  "date', text, flags=re.S)[0].strip(', "')

        # sql = "select title,genres from MovieRecommender.movies where movieid = {}".format(movieId)
        # self.cur.execute(sql)
        # data = self.cur.fetchall()
        except Exception as e:
            print(e)
            image_src = ' '
            briefinfo = ' '

        title_raw = self.movies_df.loc[self.movies_df.movieId == movieId, 'title'].tolist()[0]
        genres_raw = self.movies_df.loc[self.movies_df.movieId == movieId, 'genres'].tolist()[0]


        try:
            title = re.findall('(.*)\(', title_raw.strip(' '))[0]
        except:
            title = ''
        try:
            date = re.findall('\((\d*)\)', title_raw.strip(' '))[0]
        except:
            date = ''
        try:
            genres_list = genres_raw.strip('\r').split('|')
            genres = "|".join(genres_list)
        except:
            genres = ''

        return image_src, title, date, genres, briefinfo

    def resize(self,w, h, w_box, h_box, pil_image):
        '''resize a pil_image object so it will fit into a box of size w_box times h_box,but retain aspect ratio'''
        f1 = 1.0 * w_box / w
        f2 = 1.0 * h_box / h
        factor = min([f1, f2])
        width = int(w * factor)
        height = int(h * factor)
        return pil_image.resize((width, height), Image.ANTIALIAS)

    def get_image(self,src, movieId,w_box=80, h_box=120):

        html = requests.get(src).content

        data_stream = io.BytesIO(html)
        pil_image = Image.open(data_stream)  # 转成pil格式的图片

        w, h = pil_image.size
        pil_image_resized = self.resize(w, h, w_box, h_box, pil_image)

        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        image_savedpath = os.path.join(BASE_DIR, f'data/images/movieId_{movieId}.png')


        pil_image_resized.save(image_savedpath)

        return image_savedpath



    def savetosql(self):
        '''
        将所有的movie信息保存到csv，mysql
        表头：movieId，url_imdbid，image_url,title,date,genres,briefinfo
        :return:
        '''
        moviesinfo = Queue()
        df = pd.DataFrame()
        q = Queue()




        df_raw_movies = pd.read_csv(filepath_or_buffer='../data/movies.csv', sep=',', header=0,dtype={'movieId':str})
        movieIds = df_raw_movies['movieId'].values

        for movie in movieIds:
            q.put(movie)

        def fetch_info(q):
            while True:
                try:
                    movie = q.get_nowait()  # 不阻塞的读取队列数据


                except Exception as e:
                    print(e)
                    break

                print(movie)

                movie_url = self.get_movie_url(movie)

                image_url, title, date, genres, briefinfo = self.get_movie_info(movie_url, movie)
                # self.get_image(image_url, movie)
                movieinfo_list = [movie, movie_url, image_url, title, date, genres, briefinfo]
                moviesinfo.put(movieinfo_list)

                q.task_done()
        n = 500 #线程数量
        for x in range(n):
            consumer = threading.Thread(target=fetch_info,args=(q, ))
            consumer.start()

        q.join()
        moviesinfo = list(moviesinfo.queue)




        df = pd.DataFrame(moviesinfo)
        print(df)
        df.columns=["movieId","url_imdbid","image_url","title","date","genres","briefinfo"]
        df.to_csv('../data/moviesinfo.csv',index=False)
        dftosql(DataFrame=df,database='MovieRecommender',table_name='moviesinfo',if_exists='replace')


class FetchFromMySql(FetchInFoFromSql):
    def __init__(self):
        super().__init__()

    def get_movie_image(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        movie_image = os.path.join(BASE_DIR, f'data/images/movieId_{movieId}.png')
        if os.path.exists(movie_image):
            return movie_image
        else:
            print(f'本地无影片{movieId}的海报，从数据库读取')
            sql = f"select image_url from MovieRecommender.moviesinfo where movieId = {movieId}"
            data = self.execute_sql(sql)
            image_url = data[0][0]
            movie_image = self.get_image(image_url,movieId)
            return movie_image

    def resize(self,w, h, w_box, h_box, pil_image):
        '''resize a pil_image object so it will fit into a box of size w_box times h_box,but retain aspect ratio'''
        f1 = 1.0 * w_box / w
        f2 = 1.0 * h_box / h
        factor = min([f1, f2])
        width = int(w * factor)
        height = int(h * factor)
        return pil_image.resize((width, height), Image.ANTIALIAS)

    def get_image(self, image_url, movieId, w_box=80, h_box=120):
        html = requests.get(image_url).content

        data_stream = io.BytesIO(html)
        pil_image = Image.open(data_stream)  # 转成pil格式的图片

        w, h = pil_image.size
        pil_image_resized = self.resize(w, h, w_box, h_box, pil_image)

        BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        image_savedpath = os.path.join(BASE_DIR, f'data/images/movieId_{movieId}.png')

        pil_image_resized.save(image_savedpath)

        return image_savedpath


    def get_movie_title(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''
        sql = f"select title from MovieRecommender.moviesinfo where movieId = {movieId}"
        data = self.execute_sql(sql)
        movie_title = data[0][0]
        return movie_title


    def get_movie_date(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''
        sql = f"select date from MovieRecommender.moviesinfo where movieId = {movieId}"
        data = self.execute_sql(sql)
        movie_date = data[0][0]
        return movie_date


    def get_movie_ratinginfo(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''

        sql = f"select rating_times,mean_rating from MovieRecommender.hot_recom_all where movieId = {movieId}"
        data = self.execute_sql(sql)
        rating_times,mean_rating = data[0]
        return rating_times,mean_rating


    def get_movie_briefinfo(self,movieId):
        '''
        获取电影海报
        :param movieId:
        :return:
        '''

        sql = f"select title,date,genres,briefinfo,url_imdbid from MovieRecommender.moviesinfo where movieId = {movieId}"
        data = self.execute_sql(sql)
        title,date,genres,briefinfo,url_imdbid = data[0]
        return title,date,genres,briefinfo,url_imdbid

    def get_recom_movies_byuid(self,uid,n):
        '''
        根据给定的userid，返回n个推荐的movie
        :param uid:
        :param n:
        :return:
        '''
        sql = f'select iid from MovieRecommender.svd_predictions where uid = "{uid}" ORDER BY est DESC LIMIT 0,{n}'
        data = self.execute_sql(sql)
        recom_movies = [movie[0] for movie in data]
        return recom_movies

if __name__ == '__main__':
    fetch_movie = FetchFromMySql()
    # url = fetch_movie.get_movie_url('6')
    # print(url)
    # src,_,_,_,_ = fetch_movie.get_movie_info(url,1)
    #
    # tk_image = fetch_movie.get_image(src)

    fetch_movie.get_recom_movies_byuid('2',10)
