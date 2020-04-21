#!/usr/bin/env bash

export PYSPARK_PYTHON="/usr/bin/python3.6"
export SPARK_HOME="/opt/spark3_0_0/"
export PYTHONPATH="/opt/spark3_0_0/python:/opt/spark3_0_0/python/lib/py4j-0.10.8-src.zip" 

/opt/spark3_0_0/bin/spark-submit \
--executor-memory 1g --driver-memory 2g \
--conf spark.driver.memoryOverhead=2000 --conf spark.executor.memoryOverhead=2000 \
--conf spark.driver.resource.gpu.amount=1 \
--conf spark.driver.resource.gpu.discoveryScript=./gpuDiscovery.sh \
--conf spark.shuffle.service.enabled=true --conf spark.dynamicAllocation.enabled=true \
--master yarn --deploy-mode cluster --queue quadro \
--files /opt/spark3_0_0/bin/gpuDiscovery.sh \
--conf spark.app.name="GPU Sample" \
gpu_sample.py

