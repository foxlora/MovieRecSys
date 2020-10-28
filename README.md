# MovieRecSys
### **桌面应用版-电影推荐系统**

### 一、项目介绍

本项目是基于数据集[ml-latest-small.zip](http://files.grouplens.org/datasets/movielens/ml-latest-small.zip)，使用PyQt5开发的桌面版电影推荐系统，可实现以下功能：

- 用户注册登录
- 离线部分，基于用户的历史评分记录为用户推荐电影
- 热门推荐
- 在线部分，给新用户推荐热门电影
- 相似推荐



 开发环境：pycharm + python3.7

 软件架构：PyQt5 + mysql + APScheduler



**用到的推荐算法：**

使用了pandas的推荐库[`Surprise`](http://surpriselib.com/)

- SVD
- KNN
- DNN



### 二、项目架构

![电影推荐系统](https://github.com/foxlora/charts/blob/main/image-20201026202105641.png?raw=true)

**离线推荐：**

使用三种算法模型对日志数据进行训练，将推荐的结果保存在mysql数据库中。使用APScheduler库对这三种任务进行定时更新管理。

- svd_recom.py

  [svd算法介绍:](https://surprise.readthedocs.io/en/stable/matrix_factorization.html#matrix-factorization-based-algorithms)

  ​	目标函数：

  ![image-20201028223616887](https://github.com/foxlora/MovieRecSys/blob/master/README.assets/image-20201028223616887.png)

  ​	损失函数：

  ![image-20201028223439164](https://github.com/foxlora/MovieRecSys/blob/master/README.assets/image-20201028223439164.png)

  ​	sgd参数更新：

  ![image-20201028143250107](https://github.com/foxlora/MovieRecSys/blob/master/README.assets/image-20201028143250107.png)

- knn_recom.py

  ​	目标函数：
  
  ![image-20201028223659508](https://github.com/foxlora/MovieRecSys/blob/master/README.assets/image-20201028223659508.png)
  
- deeplearning_recom.py

  采用了双塔模型，通过DNN分别得到movieId，userID的向量，
  
  

**热门推荐：**

- hot_recom.py

  先根据时间戳进行排序，取最近的20000个评分数据进行统计分析



**在线部分：**

​	主要解决用户冷启动问题；





### 三、运行步骤



