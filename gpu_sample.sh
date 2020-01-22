#!/usr/bin/env bash
 
spark-submit \
--executor-memory 1g --driver-memory 32g \
--conf spark.driver.memoryOverhead=2000 --conf spark.executor.memoryOverhead=2000 \
--conf spark.memory.fraction=0.5 \
--conf spark.shuffle.service.enabled=true --conf spark.dynamicAllocation.enabled=true \
--master yarn --deploy-mode cluster --queue quadro \
--conf spark.app.name="GPU Sample" \
gpu_sample.py
