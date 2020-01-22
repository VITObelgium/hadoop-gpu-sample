import tensorflow as tf

def main():
    print('Tensorflow version: {}'.format(tf.__version__))
    print('GPU available: {}'.format(tf.test.is_gpu_available()))

if __name__ == '__main__':
    main()
