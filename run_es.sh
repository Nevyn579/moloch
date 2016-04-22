#!/bin/sh

TDIR=/data/moloch

cd ${TDIR}/elasticsearch-2.3.1
ulimit -a
# Uncomment if using Sun Java for better memory utilization
# export JAVA_OPTS="-XX:+UseCompressedOops"
export ES_HOSTNAME=`hostname -s`a

# Increase memory
ES_HEAP_SIZE=16384M bin/elasticsearch -Des.insecure.allow.root=true -d 
