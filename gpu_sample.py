import tensorflow as tf
from pyspark import SparkContext,SparkConf
from time import sleep

def main():
    conf = (SparkConf()
      .setAppName("GPU Sample"))
    sc = SparkContext(conf = conf)

    print('Tensorflow version: {}'.format(tf.__version__))
    print('GPU available: {}'.format(tf.config.list_physical_devices('GPU')))
    sleep(360)

if __name__ == '__main__':
    main()
