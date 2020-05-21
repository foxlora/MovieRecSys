# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/21 10:43'

import io
from PIL import Image

from PIL import ImageTk
from lxml import etree

from utils.tosql import ConnectSql,Closesql
import requests
import re

class FetchMovieInfo:
    def __init__(self,movieId):
        self.movieId = movieId
        self.conn, self.cur = ConnectSql()
    def get_movie_url(self,movieId):
        '''
        :param movieid:
        :return: url_imdbid
        根据movieid得到对应的网页链接
        '''
        # 抓取movieid对应的imdbid

        self.cur.execute("select imdbid from MovieRecommender.links where movieId = {}".format(movieId))
        imdbid = str(self.cur.fetchall()[0][0])

        imdbid = "0" * (7 - len(imdbid)) + imdbid
        url_imdbid = "http://www.imdb.com/title/tt{}/".format(imdbid)
        return url_imdbid

    def get_movie_info(self,url,movieId):
        """
        :param url:
        :return: image_src,title,date,genres
        根据网页连接和数据库，抓取电影海报地址，电影名称，电影上映时间，电影类型
        """
        html = requests.get(url)
        bs = etree.HTML(html.text)
        image_src = bs.xpath('//link[@rel="image_src"]/@href')[0]
        text = bs.xpath('//script[@type="application/ld+json"]')[0].text

        briefinfo = re.findall('^.*?"description": "(.*?)",\n  "date', text, flags=re.S)[0].strip(', "')

        sql = "select title,genres from MovieRecommender.movies where movieid = {}".format(movieId)
        self.cur.execute(sql)
        data = self.cur.fetchall()


        title = re.findall('(.*)\(', data[0][0])[0].strip(' ')
        date = re.findall('\((\d*)\)', data[0][0])[0].strip(' ')
        genres_list = data[0][1].strip('\r').split('|')
        genres = "\n".join(genres_list)

        return image_src, title, date, genres, briefinfo

    def resize(self,w, h, w_box, h_box, pil_image):
        '''resize a pil_image object so it will fit into a box of size w_box times h_box,but retain aspect ratio'''
        f1 = 1.0 * w_box / w
        f2 = 1.0 * h_box / h
        factor = min([f1, f2])
        width = int(w * factor)
        height = int(h * factor)
        return pil_image.resize((width, height), Image.ANTIALIAS)

    def get_image(self,src, w_box=80, h_box=120):
        print(src)
        html = requests.get(src).content

        data_stream = io.BytesIO(html)
        pil_image = Image.open(data_stream)  # 转成pil格式的图片

        w, h = pil_image.size
        pil_image_resized = self.resize(w, h, w_box, h_box, pil_image)
        pil_image_resized.save(f'../data/images/movieId_{self.movieId}.png')


if __name__ == '__main__':
    fetch_movie = FetchMovieInfo(1)
    url = fetch_movie.get_movie_url(1)
    src,_,_,_,_ = fetch_movie.get_movie_info(url,1)

    tk_image = fetch_movie.get_image(src)
