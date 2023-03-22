import sys
import json
import numpy as np
import tensorflow as tf 
from tensorflow.keras import layers
from socketserver import BaseRequestHandler, ThreadingTCPServer
from tensorflow .keras.models import load_model

# model = load_model(r'models/2')
model = tf.keras.models.Sequential([
    layers.Masking(),
    layers.Bidirectional(
        layers.RNN(
            layers.LSTMCell(64)
        )
    ),
    layers.Dense(1)
])

model.build((None, 8, 1))
model.load_weights('models/3.h5')

class EchoHandler(BaseRequestHandler):
    def handle(self):
        while True:
            msg = self.request.recv(1024)
            if not msg:
                break
            data = json.loads(msg.decode())
            predict = model.predict(data)
            json_data = json.dumps(predict.tolist())
            self.request.send(json_data.encode())

if __name__ == '__main__':
    server = ThreadingTCPServer(('', 5000), EchoHandler)
    server.serve_forever()
