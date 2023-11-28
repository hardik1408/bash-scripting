#!/bin/bash

read -p "what is your name" name

while [[ -z ${name} ]]
do
	echo "name cannot be blank. try again"
	read -p "enter name again" name
done

echo "your name is ${name}"
