#!/bin/sh
env

curl http://$USER_NAME:$USER_PASS@$ETCD_HOST:$ETCD_PORT/v2/keys/k8s_monitor/container_network_heathlecheck/$HOST_IP -XPUT -d value=$HOST_IP -d ttl=300
