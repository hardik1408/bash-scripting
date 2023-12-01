#!/bin/bash

############################################
# bash script that checks:
#	-memory usage
#	- cpu load
#	- number of tcp connections
#	- kernel version
############################################


# color variables
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

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

function tcp_check()
	{
	echo ""
		echo "tcp connections on ${server_name}:"
	echo ""
		cat  /proc/net/tcp | wc -l
	echo ""
}

function kernel_check(){
	echo ""
		echo "kernel version on ${server_name} is:"
		echo ""
		uname -r
	echo ""
}

function all_check(){
	memory_check
	cpu_check
	tcp_check
	kernel_check
}

all_check

# color functions
colorgreen(){
	echo -ne $green$1$clear
}
colorblue(){
	echo -ne $blue$1$clear
}

echo -ne $(colorgreen 'hello hi how are you')
