#!/bin/bash
print "ETCD_HOST:$ETCD_HOST"
print "ETCD_PORT:$ETCD_PORT"
print "HOST_IP:$HOST_IP"
curl http://$ETCD_HOST:$ETCD_PORT/v2/keys/k8s_monitor/container_network_heathlecheck/$HOST_IP -XPUT -d value=$HOST_IP -d ttl=300
