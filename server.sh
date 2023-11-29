#!/bin/bash

##
# bash script that checks:
#	-memory usage
#	- cpu load
#	- number of tcp connections
#	- kernel version
##

server_name=$(hostname)

function memory_check(){
	echo ""
		echo "memory usage on ${server_name} is:"
		free -h
		echo ""
}

function cpu_check(){
	echo ""
		echo "cpu load on ${server_name} is:"
	echo ""
		uptime
	echo ""
}
memory_check
cpu_check
