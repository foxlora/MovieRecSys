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

 软件架构：PyQt5 + mysql



**用到的推荐算法：**

使用了pandas的推荐库[`Surprise`](http://surpriselib.com/)

- SVD
- KNN
- DNN



### 二、项目架构

![电影推荐系统](https://github.com/foxlora/charts/blob/main/image-20201026202105641.png?raw=true)

**离线推荐：**

- svd_recom.py

  [经典的矩阵分解算法](https://surprise.readthedocs.io/en/stable/matrix_factorization.html#matrix-factorization-based-algorithms)

  ​	目标函数：
  $$
  \hat{r}_{ui} = \mu + b_u + b_i + q_i^Tp_u
  $$
  ​	损失函数：
  $$
  \sum_{r_{ui} \in R_{train}} \left(r_{ui} - \hat{r}_{ui} \right)^2 +
  \lambda\left(b_i^2 + b_u^2 + ||q_i||^2 + ||p_u||^2\right)
  $$
  ​	sgd参数更新：
  $$
  \begin{split}b_u &\leftarrow b_u &+ \gamma (e_{ui} - \lambda b_u)\\
  b_i &\leftarrow b_i &+ \gamma (e_{ui} - \lambda b_i)\\
  p_u &\leftarrow p_u &+ \gamma (e_{ui} \cdot q_i - \lambda p_u)\\
  q_i &\leftarrow q_i &+ \gamma (e_{ui} \cdot p_u - \lambda q_i)\end{split}
  $$
  

- knn_recom.py

  ​	目标函数：
  $$
  \hat{r}_{ui} = \frac{
  \sum\limits_{v \in N^k_i(u)} \text{sim}(u, v) \cdot r_{vi}}
  {\sum\limits_{v \in N^k_i(u)} \text{sim}(u, v)}
  $$

- deeplearning_recom.py

  这部分参考了

**热门推荐：**

- hot_recom.py

  先根据时间戳进行排序，取最近的20000个评分数据进行统计分析



**在线部分：**

​	主要解决用户冷启动问题；



