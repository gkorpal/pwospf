#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 vhost_num"
    exit
fi

./sr_solution -s ec2-54-245-163-146.us-west-2.compute.amazonaws.com -p 8888 -v vhost$1 -r rtable.vhost$1 -t 0
