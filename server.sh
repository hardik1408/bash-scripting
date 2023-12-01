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

# color functions
colorgreen(){
	echo -ne $green$1$clear
}
colorblue(){
	echo -ne $blue$1$clear
}

menu(){
echo -ne "
My First Menu
$(colorgreen '1)') Memory usage
$(colorgreen '2)') CPU Load
$(colorgreen '3)') Number of TCP connections
$(colorgreen '4)') Kernel Version
$(colorgreen '5)') Check all
$(colorgreen '6)') Exit
$(colorblue 'choose an option:') "
	read a
	case $a in
		1) memory_check ; menu ;;
		2) cou_checl ; menu ;;
		3) tcp_check ; menu ;;
		4) kernel_check ; menu ;;
		5) all_checks ; menu ;;
			0) exit 0 ;;
			*) echo -e $red"Wrong option."$clear;
wrongcommand;;
	esac


}
menu
