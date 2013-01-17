#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 vhost_num"
    exit
fi

#TODO: change the hostname into the ip/hostname of the machine runs mininet/pox
./sr_solution -t 300 -v vhost$1 -r rtable.vhost$1 -s ec2-54-245-163-146.us-west-2.compute.amazonaws.com -p 8888 -l vhost$1.pcap
