This code sample shows how to submit an application to the GPU nodes of the cluster. (This approach will be adjusted once GPU support on Hadoop 3.1 is enabled.)

# Requirements

The requirements for running on a GPU are:
* use `--queue quadro` to submit to a GPU node
* set up a SparkContext in your python code, even if you do not actually use it (This is because Spark will kill the container if no SparkContext is initialized in time)
* The current default Python 2.7 should not be used, and instead the Python 3.5 environment is recommended. Another option is to create your own VirtualEnv/Conda env in your Private or Public folder.
* Set the Driver memory to 32GB to make sure only 1 job gets scheduled on each GPU node (there are currently 2 GPU nodes available). This is required because currently there is no resource scheduling available on GPU devices.

# What does this sample do?

This sample does nothing more than print the Tensorflow version and print the available GPUs.
