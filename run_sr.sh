#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 mininet_machine_ip vhost_num"
    exit
fi

#TODO: change the hostname into the ip/hostname of the machine runs mininet/pox
./sr_solution -t 300 -v vhost$2 -r rtable.vhost$2 -s $1 -p 8888 -l vhost$2.pcap
