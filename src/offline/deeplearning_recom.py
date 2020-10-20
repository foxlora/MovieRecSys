# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/10/1 23:26'

# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/6/11 12:09'

import time

import pandas as pd
import os
import re
import pickle
import tensorflow as tf
import numpy as np
from sklearn.model_selection import train_test_split


class DeepLearningRecom():
    def __init__(self):
        pass

    def load_csv_data(self):
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        movies_file_path = os.path.join(BASE_DIR, 'data/movies.csv')
        movies = pd.read_csv(movies_file_path, sep=',', header=0, dtype=str)

        # 将Title中的年份去掉
        pattern = re.compile(r'\((\d*)\)')

        title_map = {val: re.sub(pattern, '', val) for ii, val in enumerate(set(movies['title']))}
        movies['title'] = movies['title'].map(title_map)

        # 电影类型转数字字典
        genres_set = set()
        for val in movies['genres'].str.split('|'):
            genres_set.update(val)

        genres_set.add('<PAD>')
        genres2int = {val: ii for ii, val in enumerate(genres_set)}

        # 将电影类型转成等长数字列表，长度是20
        genres_map = {val: [genres2int[row] for row in val.split('|')] for ii, val in enumerate(set(movies['genres']))}

        for key in genres_map:
            for cnt in range(max(genres2int.values()) - len(genres_map[key])):
                genres_map[key].insert(len(genres_map[key]) + cnt, genres2int['<PAD>'])
            genres_map[key] = genres_map[key][:20]

        movies['genres'] = movies['genres'].map(genres_map)

        # 电影Title转数字字典
        title_set = set()
        for val in movies['title'].str.split():
            title_set.update(val)

        title_set.add('<PAD>')
        title2int = {val: ii for ii, val in enumerate(title_set)}



        # 将电影Title转成等长数字列表，长度是15
        title_count = 15
        title_map = {val: [title2int[row] for row in val.split()] for ii, val in enumerate(set(movies['title']))}



        for key in title_map:
            for cnt in range(title_count - len(title_map[key])):
                title_map[key].insert(len(title_map[key]) + cnt, title2int['<PAD>'])

            title_map[key] = title_map[key][:15]

        movies['title'] = movies['title'].map(title_map)

        # 读取评分数据集
        ratings_file_path = os.path.join(BASE_DIR, 'data/ratings.csv')
        ratings = pd.read_csv(ratings_file_path, sep=',', header=0, dtype=str)
        ratings = ratings.filter(regex='userId|movieId|rating')

        # 合并表
        data = pd.merge(ratings, movies)

        # uid进行硬编码
        uidmap = {val: ii for ii, val in enumerate(set(data['userId']))}
        data['userId'] = data['userId'].map(uidmap)

        # movieid进行硬编码
        movieidmap = {val: ii for ii, val in enumerate(set(data['movieId']))}
        data['movieId'] = data['movieId'].map(movieidmap)
        # 将数据分成X和y两张表
        # 将数据分成X和y两张表
        target_fields = ['rating']
        features_pd, targets_pd = data.drop(target_fields, axis=1), data[target_fields]

        features = features_pd.values
        targets_values = targets_pd.values



        return features, targets_values, movies,(uidmap, movieidmap, title_map, genres_map),genres2int,title2int

    def save_data(self):
        features, targets_values,movies, _map,genres2int,title2int = self.load_csv_data()

        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        pickle_saved_path = os.path.join(BASE_DIR, 'data/deep_learning_rem_preprocess.p')

        pickle.dump((features, targets_values,movies,_map,genres2int,title2int), open(pickle_saved_path, mode='wb'))

    def load_pickle_data(self):
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        pickle_saved_path = os.path.join(BASE_DIR, 'data/deep_learning_rem_preprocess.p')
        features, targets_values ,movies,_map,genres2int,title2int= pickle.load(open(pickle_saved_path, mode='rb'))
        return features, targets_values,movies,_map,genres2int,title2int

    def get_userfeature_by_uid(self,user_id):
        features, targets_values,movies,_map,genres2int,title2int = self.load_pickle_data()
        uidmap, movieidmap, title_map, genres_map = _map
        uid = uidmap[user_id]
        return uid
    def get_moviefeature_by_mid(self,movie_id):
        features, targets_values, movies, _map, genres2int, title2int = self.load_pickle_data()
        uidmap, movieidmap, title_map, genres_map = _map

        mid = movieidmap[movie_id]
        genres = movies.loc[movies['movieId'] == movie_id,'genres'].tolist()
        #[14, 5, 10, 19, 9, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
        titles = movies.loc[movies['movieId'] == movie_id,'title'].tolist()
        #[300, 1690, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981, 2981]
        return mid,genres,titles


    def get_rating(self,user_id,movie_id):
        #根据user_id获得user向量
        uid = self.get_userfeature_by_uid(user_id)
        mid, genres, titles = self.get_moviefeature_by_mid(movie_id)

        model = tf.saved_model.load(export_dir= './/Model//export//')
        inputs = [np.reshape(uid,[-1,1]),#取第一列
                np.reshape(mid,[-1,1]),#取第二列
                self.list_to_array(np.array(titles)),
                self.list_to_array(np.array(genres))]
        print(inputs)
        return inputs

    def list_to_array(self,x):
        '''
        输入特征处理
        :param x:列表
        :return:
        '''
        shape = x.shape
        num = len(x[0])
        arr_fin = np.zeros([shape[0],num])

        for i in range(shape[0]):
            arr_fin[i] = x[i]
        return arr_fin


class TrainAndTest(object):
    def __init__(self,features,MODEL_DIR):
        '''

        :param features: 模型特征
        :param MODEL_DIR: 模型保存目录
        '''
        uid, movie_id, movie_genres, movie_titles = get_inputs()
        user_combine_layer, user_combine_layer_flat = get_user_feature_layer(uid)

        # 获取电影ID的嵌入向量
        movie_id_embed_layer = get_movie_id_embed_layer(movie_id)
        # 获取电影类型的嵌入向量
        movie_genres_embed_layer = get_movie_genres_layers(movie_genres)
        # 获取电影名的特征向量
        pool_layer_flat, dropout_layer = get_movie_cnn_layer(movie_titles)
        # 得到电影特征
        movie_combine_layer, movie_combine_layer_flat = get_movie_feature_layer(movie_id_embed_layer,
                                                                                movie_genres_embed_layer,
                                                                                dropout_layer)

        inference = tf.keras.layers.Lambda(lambda layer:
                                           tf.reduce_sum(layer[0] * layer[1], axis=1), name="inference")(
            (user_combine_layer_flat, movie_combine_layer_flat))
        inference = tf.keras.layers.Lambda(lambda layer: tf.expand_dims(layer, axis=1))(inference)

        self.model = tf.keras.Model(
            inputs=[uid,  movie_id, movie_titles, movie_genres],
            outputs=[inference])

        self.model.summary()

        self.optimizer = tf.keras.optimizers.Adam(0.5)
        self.loss = tf.keras.losses.MeanSquaredError()
        self.metrics = tf.keras.metrics.MeanAbsoluteError()

        self.losses = {'train': [], 'test': []}
        self.ModelDir = MODEL_DIR

        if tf.io.gfile.exists(MODEL_DIR):
            #             print('Removing existing model dir: {}'.format(MODEL_DIR))
            #             tf.io.gfile.rmtree(MODEL_DIR)
            pass
        else:
            tf.io.gfile.makedirs(MODEL_DIR)

        train_dir = os.path.join(MODEL_DIR, 'summaries', 'train')
        test_dir = os.path.join(MODEL_DIR, 'summaries', 'eval')

        checkpoint_dir = os.path.join(MODEL_DIR, 'checkpoints')
        self.checkpoint_prefix = os.path.join(checkpoint_dir, 'ckpt')
        self.checkpoint = tf.train.Checkpoint(model=self.model, optimizer=self.optimizer)

        # Restore variables on creation if a checkpoint exists.
        self.checkpoint.restore(tf.train.latest_checkpoint(checkpoint_dir))

    def list_to_array(self,x):
        '''
        输入特征处理
        :param x:
        :return:
        '''
        shape = x.shape
        num = len(x[0])
        arr_fin = np.zeros([shape[0],num])

        for i in range(shape[0]):
            arr_fin[i] = x[i]
        return arr_fin

    @tf.function
    def train_step(self, x, y):
        #x:list of tensor
        #y:tensor
        # Record the operations used to compute the loss, so that the gradient
        # of the loss with respect to the variables can be computed.
        #         metrics = 0
        with tf.GradientTape() as tape:
            y_hat = self.model(x, training=True)
            loss = self.loss(y, y_hat)
            self.metrics(y, y_hat)

        grads = tape.gradient(loss, self.model.trainable_variables)
        self.optimizer.apply_gradients(zip(grads, self.model.trainable_variables))
        return loss, y_hat

    def get_batches(self,Xs, ys, batch_size):
        for start in range(0, len(Xs), batch_size):
            end = min(start + batch_size, len(Xs))
            yield Xs[start:end], ys[start:end]

    def training(self,features,targets_values,epochs=5,batchsize=256,log_freq=50):
        ###########################################################################
        #处理batch
        for epoch_i in range(epochs):
            train_X, test_X, train_Y, test_Y = train_test_split(features,
                                                                targets_values,
                                                                test_size=0.2,
                                                                random_state=0)

            train_batches = self.get_batches(train_X,train_Y,batch_size=256)
            batch_num = (len(train_X) // batchsize)

            start = time.time()
            start_time = time.time()
            for batch_i in range(batch_num):
                x,y = next(train_batches)

                train_x = [x.take(0, 1).reshape(-1, 1).astype(np.float32),#取第一列
                           x.take(1, 1).reshape(-1, 1).astype(np.float32),#取第二列
                           self.list_to_array(x.take(2, 1)),
                           self.list_to_array(x.take(3, 1))]


                train_y = y.reshape(-1, 1).astype(np.float32)






                loss, y_hat = self.train_step(train_x,train_y)
            ######################################################################

                #处理打印信息
                self.losses['train'].append(loss)
                if tf.equal(self.optimizer.iterations % log_freq,0):
                    rate = log_freq / (time.time() - start)
                    print('Step #{}\tEpoch{:>3}\tBatch {:>4}/{}   Loss: {:0.6f} mae: {:0.6f} ({} steps/sec)'.format(
                        self.optimizer.iterations.numpy(),
                        epoch_i,
                        batch_i,
                        batch_num,
                        loss, (self.metrics.result()), rate))

                    self.metrics.reset_states()

                    start = time.time()

            train_end = time.time()
            print(
                '\nTrain time for epoch #{} ({} total steps): {}'.format(epoch_i + 1, self.optimizer.iterations.numpy(),
                                                                    train_end - start_time))

        self.export_path = os.path.join(self.ModelDir, 'export/')
        tf.saved_model.save(self.model, self.export_path)

    def predict(self,inputs):
        model = tf.saved_model.load(export_dir=os.path.join(self.ModelDir, 'export/'))
        print(list(model.signatures.keys()))
        infer = model.signatures["serving_default"]
        print(infer.structured_outputs)
        uid, movie_id, movie_titles, movie_genres = inputs
        uid = tf.convert_to_tensor(uid,dtype=tf.int32)
        movie_id = tf.convert_to_tensor(movie_id,dtype=tf.int32)
        movie_titles = tf.convert_to_tensor(movie_titles,dtype=tf.int32)
        movie_genres = tf.convert_to_tensor(movie_genres,dtype=tf.int32)
        print(uid,movie_id,movie_titles,movie_genres)
        inference_val  = infer(uid=uid,movie_id=movie_id,movie_titles=movie_titles,movie_genres=movie_genres)
        print(inference_val)


if __name__ == '__main__':
    deeplearning_recom = DeepLearningRecom()
    # deeplearning_recom.load_csv_data()
    # deeplearning_recom.save_data()
    features, targets_values,movies,_map,genres2int,title2int = deeplearning_recom.load_pickle_data()

    embed_dim = 32
    uid_max = max(features.take(0, 1)) + 1  #612 + 1 = 613
    movie_id_max = max(features.take(1, 1)) + 1  # 9723+1 = 9724
    moive_genres_max = max(genres2int.values()) + 1  # 20 + 1 = 21
    movie_title_max = max(title2int.values()) + 1  # 11501 + 1 = 11502
    sentences_size = 15
    window_sizes = {2, 3, 4, 5}
    # 文本卷积核数量
    filter_num = 8



    def get_inputs():
        uid = tf.keras.layers.Input(shape=(1,), dtype='int32', name='uid')

        movie_id = tf.keras.layers.Input(shape=(1,), dtype='int32', name='movie_id')
        movie_genres = tf.keras.layers.Input(shape=(20,), dtype='int32', name='movie_genres')
        movie_titles = tf.keras.layers.Input(shape=(15,), dtype='int32', name='movie_titles')
        return uid, movie_id, movie_genres, movie_titles

    def get_user_feature_layer(uid):
        # 第一层全连接
        uid_embed_layer = tf.keras.layers.Embedding(uid_max, embed_dim, input_length=1, name='uid_embed_layer')(uid)
        uid_fc_layer = tf.keras.layers.Dense(embed_dim, name="uid_fc_layer", activation='relu')(uid_embed_layer)
        user_combine_layer = tf.keras.layers.Dense(200, activation='tanh')(uid_fc_layer)  # (?, 1, 200)
        user_combine_layer_flat = tf.keras.layers.Reshape([200], name="user_combine_layer_flat")(user_combine_layer)
        return user_combine_layer, user_combine_layer_flat

    #电影名嵌入层
    def get_movie_id_embed_layer(movie_id):
        movie_id_embed_layer = tf.keras.layers.Embedding(movie_id_max, embed_dim, input_length=1,
                                                         name='movie_id_embed_layer')(movie_id)
        return movie_id_embed_layer

    def get_movie_cnn_layer(movie_titles):
        # 从嵌入矩阵中得到电影名对应的各个单词的嵌入向量
        movie_title_embed_layer = tf.keras.layers.Embedding(movie_title_max, embed_dim, input_length=15,
                                                            name='movie_title_embed_layer')(movie_titles)
        sp = movie_title_embed_layer.shape
        movie_title_embed_layer_expand = tf.keras.layers.Reshape([sp[1], sp[2], 1])(movie_title_embed_layer)
        # 对文本嵌入层使用不同尺寸的卷积核做卷积和最大池化
        pool_layer_lst = []
        for window_size in window_sizes:
            conv_layer = tf.keras.layers.Conv2D(filter_num, (window_size, embed_dim), 1, activation='relu')(
                movie_title_embed_layer_expand)
            maxpool_layer = tf.keras.layers.MaxPooling2D(pool_size=(sentences_size - window_size + 1, 1), strides=1)(
                conv_layer)
            pool_layer_lst.append(maxpool_layer)
        # Dropout层
        pool_layer = tf.keras.layers.concatenate(pool_layer_lst, 3, name="pool_layer")
        max_num = len(window_sizes) * filter_num
        pool_layer_flat = tf.keras.layers.Reshape([1, max_num], name="pool_layer_flat")(pool_layer)

        dropout_layer = tf.keras.layers.Dropout(0.5, name="dropout_layer")(pool_layer_flat)
        return pool_layer_flat, dropout_layer
    #
    def get_movie_genres_layers(movie_genres):
        movie_genres_embed_layer = tf.keras.layers.Embedding(moive_genres_max, embed_dim, input_length=20,
                                                                 name='movie_categories_embed_layer')(movie_genres)
        movie_genres_embed_layer = tf.keras.layers.Lambda(
            lambda layer: tf.reduce_sum(layer, axis=1, keepdims=True))(movie_genres_embed_layer)

        return movie_genres_embed_layer
    #将Movie的各个层一起做全连接
    def get_movie_feature_layer(movie_id_embed_layer, movie_genres_embed_layer, dropout_layer):
        # 第一层全连接
        movie_id_fc_layer = tf.keras.layers.Dense(embed_dim, name="movie_id_fc_layer", activation='relu')(
            movie_id_embed_layer)
        movie_categories_fc_layer = tf.keras.layers.Dense(embed_dim, name="movie_categories_fc_layer",
                                                          activation='relu')(movie_genres_embed_layer)

        # 第二层全连接
        movie_combine_layer = tf.keras.layers.concatenate([movie_id_fc_layer, movie_categories_fc_layer, dropout_layer],
                                                          2)
        movie_combine_layer = tf.keras.layers.Dense(200, activation='tanh')(movie_combine_layer)

        movie_combine_layer_flat = tf.keras.layers.Reshape([200], name="movie_combine_layer_flat")(movie_combine_layer)
        return movie_combine_layer, movie_combine_layer_flat


    #获取batch



    train_test = TrainAndTest(features,'./Model/')
    # train_test.training(features,targets_values)
    inputs = deeplearning_recom.get_rating('foxlora','152083')

    train_test.predict(inputs)


    def list_to_array(x):
        '''
        输入特征处理
        :param x:
        :return:
        '''
        shape = x.shape
        num = len(x[0])
        arr_fin = np.zeros([shape[0],num])

        for i in range(shape[0]):
            arr_fin[i] = x[i]
        return arr_fin



