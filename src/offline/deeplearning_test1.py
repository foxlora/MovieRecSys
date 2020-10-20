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

        # 将电影类型转成等长数字列表，长度是18
        genres_map = {val: [genres2int[row] for row in val.split('|')] for ii, val in enumerate(set(movies['genres']))}

        for key in genres_map:
            for cnt in range(max(genres2int.values()) - len(genres_map[key])):
                genres_map[key].insert(len(genres_map[key]) + cnt, genres2int['<PAD>'])

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


        return features, targets_values, (uidmap, movieidmap, title_map, genres_map)

    def save_data(self):
        features, targets_values, _map = self.load_csv_data()

        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        pickle_saved_path = os.path.join(BASE_DIR, 'data/deep_learning_rem_preprocess.p')

        pickle.dump((features, targets_values,_map), open(pickle_saved_path, mode='wb'))

    def load_pickle_data(self):
        BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        pickle_saved_path = os.path.join(BASE_DIR, 'data/deep_learning_rem_preprocess.p')
        features, targets_values ,_map= pickle.load(open(pickle_saved_path, mode='rb'))
        return features, targets_values,_map


class UserLayer(tf.keras.layers.Layer):
    def __init__(self, features):
        super(UserLayer, self).__init__()
        uid_max = max(features.take(0, 1)) + 1  # 第一列
        embed_dim = 32

        self.user_embedding = tf.keras.layers.Embedding(uid_max, embed_dim, input_length=1, name='uid_embed_layer')
        self.user_fc_layer = tf.keras.layers.Dense(200, name="uid_fc_layer", activation='relu')

    def call(self, inputs, **kwargs):
        x = self.user_embedding(inputs)
        output = self.user_fc_layer(x)  # (?, 1, 200)
        return output


class MovieLayer(tf.keras.layers.Layer):
    def __init__(self, features):
        super(MovieLayer, self).__init__()
        embed_dim = 32
        movie_id_max = max(features.take(1, 1)) + 1  # 第2列
        self.movie_embedding = tf.keras.layers.Embedding(movie_id_max, embed_dim, input_length=1, name='mid_embed_layer')
        self.movie_fc_layer = tf.keras.layers.Dense(200, name="mid_fc_layer", activation='relu')


    def call(self, inputs, **kwargs):


        mid_embed_layer = self.movie_embedding(inputs)
        movie_id_fc_layer = self.movie_fc_layer(mid_embed_layer)

        return movie_id_fc_layer

class MovieCnnLayer(tf.keras.layers.Layer):
    '''
    处理movie title
    '''
    def __init__(self, features):
        super(MovieCnnLayer, self).__init__()

        self.embed_dim = 32
        self.movie_title_max = 11502
        self.embed_dim = 32
        self.window_sizes = [2, 3, 4, 5]
        self.filter_num = 8
        self.dropout_keep = 0.4

        self.title_embed_layer = tf.keras.layers.Embedding(self.movie_title_max, self.embed_dim, input_length=15, name='movie_title_embed_layer')
        self.title_embed_layer_expand = tf.keras.layers.Reshape([15, self.embed_dim, 1])

        self.conv_layer0 =  tf.keras.layers.Conv2D(self.filter_num, (self.window_sizes[0], self.embed_dim),
                                                   activation='relu')
        self.maxpool_layer0 = tf.keras.layers.MaxPooling2D(pool_size=(15 - self.window_sizes[0] + 1 ,1), strides=1)

        self.conv_layer1 = tf.keras.layers.Conv2D(self.filter_num, (self.window_sizes[1], self.embed_dim),
                                                  activation='relu')
        self.maxpool_layer1 = tf.keras.layers.MaxPooling2D(pool_size=(15 - self.window_sizes[1] + 1, 1), strides=1)

        self.conv_layer2 = tf.keras.layers.Conv2D(self.filter_num, (self.window_sizes[2], self.embed_dim),
                                                  activation='relu')
        self.maxpool_layer2 = tf.keras.layers.MaxPooling2D(pool_size=(15 - self.window_sizes[2] + 1, 1), strides=1)

        self.conv_layer3 = tf.keras.layers.Conv2D(self.filter_num, (self.window_sizes[3], self.embed_dim),
                                                  activation='relu')
        self.maxpool_layer3 = tf.keras.layers.MaxPooling2D(pool_size=(15 - self.window_sizes[3] + 1, 1), strides=1)

        self.pool_layer_flat  = tf.keras.layers.Reshape([1, 32], name = "pool_layer_flat")
        self.dropout_layer = tf.keras.layers.Dropout(self.dropout_keep, name = "dropout_layer")

    def call(self, inputs, **kwargs):
        title_embed_layer = self.title_embed_layer(inputs)
        title_embed_layer_expand = self.title_embed_layer_expand(title_embed_layer)

        conv_layer0 = self.conv_layer0(title_embed_layer_expand)
        maxpool_layer0 = self.maxpool_layer0(conv_layer0)
        conv_layer1 = self.conv_layer1(title_embed_layer_expand)
        maxpool_layer1 = self.maxpool_layer1(conv_layer1)
        conv_layer2 = self.conv_layer2(title_embed_layer_expand)
        maxpool_layer2 = self.maxpool_layer2(conv_layer2)
        conv_layer3 = self.conv_layer3(title_embed_layer_expand)
        maxpool_layer3 = self.maxpool_layer3(conv_layer3)
        pool_layer = tf.concat([maxpool_layer0,maxpool_layer1,
                                maxpool_layer2,maxpool_layer3],axis=3)

        pool_layer_flat = self.pool_layer_flat(pool_layer)
        output = self.dropout_layer(pool_layer_flat)
        return output



class DeepLearningNetwork(tf.keras.Model):
    '''
    构建神经网络，进行训练评估
    '''

    def __init__(self, features):
        super(DeepLearningNetwork, self).__init__()
        self.uid_layer = UserLayer(features)
        self.movie_layer = MovieLayer(features)

        self.inference = tf.keras.layers.Lambda(lambda layer:
            tf.reduce_sum(layer[0] * layer[1], axis=1), name="inference")
        self.flatten = tf.keras.layers.Flatten()
        self.expand_dims_layer = tf.keras.layers.Lambda(lambda layer: tf.expand_dims(layer, axis=1))




    def call(self, inputs, training=None, mask=None):
        uid,movie_id = inputs
        user_out = self.uid_layer(uid)

        movie_out = self.movie_layer(movie_id)
        user_flat = self.flatten(user_out)
        movie_flat = self.flatten(movie_out)
        output = self.inference((user_flat,movie_flat))
        output = self.expand_dims_layer(output)
        return output

    def summary(self, line_length=None, positions=None, print_fn=None):
        uid = tf.keras.layers.Input(shape=(1,), dtype='int32', name='uid')

        movie_id = tf.keras.layers.Input(shape=(1,), dtype='int32', name='movie_id')
        # movie_genres = tf.keras.layers.Input(shape=(20,), dtype='int32', name='movie_genres')
        # movie_titles = tf.keras.layers.Input(shape=(15,), dtype='int32', name='movie_titles')

        tf.keras.Model(inputs=[uid,movie_id],
                       outputs = self.call([uid,movie_id])).summary()



class TrainAndTest(object):
    def __init__(self,features,MODEL_DIR):
        '''

        :param features: 模型特征
        :param MODEL_DIR: 模型保存目录
        '''
        self.model = DeepLearningNetwork(features)
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

        #         self.train_summary_writer = summary_ops_v2.create_file_writer(train_dir, flush_millis=10000)
        #         self.test_summary_writer = summary_ops_v2.create_file_writer(test_dir, flush_millis=10000, name='test')

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

                train_x = [x.take(0, 1).reshape(-1, 1).astype(np.float32),
                           x.take(1, 1).reshape(-1, 1).astype(np.float32)
                          ]
                train_y = y.reshape(-1, 1).astype(np.float32)






                loss, y_hat = self.train_step(train_x,train_y)
            ######################################################################

                #处理打印信息
                self.losses['train'].append(loss)
                if tf.equal(self.optimizer.iterations % log_freq,0):
                    rate = log_freq / (time.time() - start)
                    print('Step #{}\tEpoch {:>3} Batch {:>4}/{}   Loss: {:0.6f} mae: {:0.6f} ({} steps/sec)'.format(
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

        # self.export_path = os.path.join(self.ModelDir, 'export')
        # tf.saved_model.save(self.model, self.export_path)

if __name__ == '__main__':
    deeplearning_recom = DeepLearningRecom()
    deeplearning_recom.load_csv_data()
    # deeplearning_recom.save_data()
    features, targets_values,_map = deeplearning_recom.load_pickle_data()
    # print(_map[2])
    # b = features.take(2, 1)
    # print(type(b))




    #获取batch




    train_test = TrainAndTest(features,'./Model/')
    train_test.training(features,targets_values)

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

    # features = features[:100]
    # targets_values = targets_values[:100]
    # train_x = [features.take(0, 1).reshape(-1, 1).astype(np.float32),
    #            features.take(1, 1).reshape(-1, 1).astype(np.float32),
    #            list_to_array(features.take(2, 1)),
    #            list_to_array(features.take(3, 1))]
    # train_y = targets_values.reshape(-1, 1).astype(np.float32)
    #
    #
    # model = DeepLearningNetwork(features)
    # model.summary()
    #
    # model.compile(loss=tf.keras.losses.mse,
    #               optimizer=tf.optimizers.Adam(learning_rate=0.5),
    #               metrics=[tf.keras.metrics.mae])
    #
    # model.fit(train_x,train_y,epochs=1,batch_size=10,validation_split=0.1)


