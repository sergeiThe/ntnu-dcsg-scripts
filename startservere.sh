#!/bin/bash

source /home/ubuntu/DCSG2003_V23_group52-openrc.sh



for server in $(openstack server list | grep SHUTOFF | awk '{print $4}'); do
	openstack server start $server; done
