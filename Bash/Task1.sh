#!/bin/bash

function all {
	echo All function was invoked!
	exit 0
}

function target {
	echo "$(ss)"
	exit 0
}

function help {
	echo -e "Usage:\nKeys:\n--all displays IP addresses and symbolic names of all hosts in the current subnet."
	echo -e "--target key displays a list of open system TCP ports."
	exit 1
}

if [ $# -eq 0 ] || [ "$1" == "--help" ]; then
	help
fi

if [ "$1" == "--all" ]; then
	all
fi

if [ "$1" == "--target" ]; then
	target
fi

echo "Wrong key(s) entered. Try checking out --help."
exit 1

