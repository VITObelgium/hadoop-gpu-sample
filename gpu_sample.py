import tensorflow as tf
from pyspark import SparkContext,SparkConf

def main():
    conf = (SparkConf()
      .setAppName("GPU Sample"))
    sc = SparkContext(conf = conf)

    print('Tensorflow version: {}'.format(tf.__version__))
    print('GPU available: {}'.format(tf.test.is_gpu_available()))

if __name__ == '__main__':
    main()
