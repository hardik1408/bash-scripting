#!/bin/bash

read -p "what is your name" name

if [[ -z ${name} ]] 
then
	echo "please enter your name"
fi

