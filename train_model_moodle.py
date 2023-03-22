import argparse
import os
import tempfile
from functools import partial
from datetime import datetime

import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

from sklearn.model_selection import train_test_split

def random_minus(inputs, y, factor=.3):
    mask = tf.stack([tf.random.uniform([]) > factor for _ in range(inputs.shape[0])])
    mask = tf.reshape(mask, inputs.shape)
    outputs = inputs * tf.cast(mask, inputs.dtype) # * -2 * inputs
    return outputs, y


parser = argparse.ArgumentParser()
parser.add_argument('path_data', type=str)
parser.add_argument("--path_save_model", default='tmp')
args = parser.parse_args()

df = pd.read_csv(args.path_data, encoding='utf-8', delimiter=';', decimal='.')
df = df.fillna(0)
df = df.drop(['student', 'idu'], axis=1)
for i in ['student', 'idu']:        
    try:
        df=df.drop([i], axis=1)
    except KeyError:
        pass
y = df.pop('grade')

kol_stolbec = df.shape[1]

minus = pd.DataFrame(np.zeros((len(df), 1)))

columns_concat = []
for i in df.columns:
    if 'grade' in i:
        columns_concat.append(minus)
    else:
        columns_concat.append(df[[i]])

tmp_data = pd.concat(columns_concat,  axis=1)
tmp_data = np.expand_dims(tmp_data, -1)

X = np.expand_dims(df, -1)
print(X.shape, y.shape)
X_train, X_test, Y_train, Y_test = train_test_split(X, y, test_size=0.2)

batch_size = 8

n_ds_train = tf.data.Dataset.from_tensor_slices((X_train, Y_train))
n_ds_test = tf.data.Dataset.from_tensor_slices((X_test, Y_test))

ds_train = n_ds_train.shuffle(100).batch(batch_size) # .map(partial(random_minus, factor=0.6))
ds_test = n_ds_test.batch(batch_size)

input_shape = (None, kol_stolbec, 1)

model = tf.keras.models.Sequential([
    tf.keras.layers.Masking(),
    layers.Bidirectional(
        layers.RNN(
            layers.LSTMCell(64)
        )
    ),
    layers.Dense(1)
])


model.compile(
    optimizer='adam',
    loss='mse',
    metrics=['mae']
)

callbacks = [
    keras.callbacks.EarlyStopping(
        monitor = 'val_loss',
        patience = 50, verbose=1,
        restore_best_weights = True
    ),
    keras.callbacks.ReduceLROnPlateau(
        monitor='val_loss',
        patience=15, verbose=1,
        factor=.75
    ),
]

model.fit(
    ds_train,
    epochs=2048,
    validation_data=(tmp_data, y),
    callbacks=callbacks,
)

# Сохранение модели
if args.path_save_model != 'tmp':
    tf.keras.models.save_model(
        model,
        args.path_save_model,
        overwrite=True,
        include_optimizer=True,
        save_format=None,
        signatures=None,
        options=None
    )
else:
    MODEL_DIR = tempfile.gettempdir()
    export_path = os.path.join(MODEL_DIR, datetime.now().strftime("%m%d%Y_%H%M%S"))
    print('export_path = {}\n'.format(export_path))

    tf.keras.models.save_model(
        model,
        export_path,
        overwrite=True,
        include_optimizer=True,
        save_format=None,
        signatures=None,
        options=None
    )