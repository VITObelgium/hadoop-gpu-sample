This code sample shows how to submit an application to the GPU nodes of the cluster. 

Submitting a Spark Job to the GPU nodes is similar to a regular spark-submit job (example: https://github.com/VITObelgium/python-spark-quickstart).

# Requirements

Get Spark3 since GPU is only supported in Spark3

  * This can be done by asking the DevOPS team, as the installation is done on your userVM through puppet.

In your spark-submit, you'll need to add a couple things

  * queue will have to be set to 'quadro' (default) or 'gtx1080ti'
  * SPARK_HOME env will have to be set to the Spark3 home (/opt/spark3_0_0/)
  * PYTHONPATH will have to be set to the python provided with the Spark3 package (/opt/spark3_0_0/python:/opt/spark3_0_0/python/lib/py4j-0.10.8-src.zip)
  * a gpu.discoveryScript will have to be provided. This script is also provided in the Spark3 package (/opt/spark3_0_0/bin/gpuDiscovery.sh)
  * gpu resources will have to be requested in a similar way to Memory and vCores.


Keep in mind that we provide 3 python environments (Python2.7, Python3.5 and Python3.6), but only Python3.6 supports the GPUs.
If this Python3.6 environment doesn't suffice, or if you don't want to be relient on the packages we provide/update, you can use your own virtualenv or conda which you can store in your Private or Public folder and add this to the PYSPARK_PYTHON.

Asking for multiple GPU resources while your code isn't developed to use multiple GPU resources will just occupy multiple GPU resources while only using one, DO NOT DO THIS.

# Cluster information

The GPU cluster is a separate Hadoop cluster from our main cpu/RAM cluster. The Job UI can be found at epod-gpumaster1.vgt.vito.be:8088.

# Versions

The nvidia-driver version installed is 440.33.01
The CUDA version installed is CUDA-10.1
The cuDNN version installed is 7.6.5.32

# What does this sample do?

This sample does nothing more than print the Tensorflow version and print the available GPUs.

# nvidia-docker support

Still under development.
