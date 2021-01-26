#!/bin/bash

# collecting tool list
source get-tools.sh

# Checking if told to auto run
if [[ "$1" == "-a" ]]; then
    sudo apt-get install -y --ignore-missing ${all[@]}
    echo "Done"
    exit
fi
