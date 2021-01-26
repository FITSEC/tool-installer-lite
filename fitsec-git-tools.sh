#!/bin/bash

sudo apt-get install -y python3-pip
# making script directories
installs=~/Documents/library/install
runs=~/Documents/library/run

mkdir -p ${installs}
mkdir -p ${runs}/bin

# Katana #
cd ${runs}
git clone https://github.com/adnane-X-tebbaa/Katana.git
cd Katana
python3 pythontoapt.py requirements.txt
pip3 install -r requirements.txt
cd ../bin
ln -s ${installs}/Katana/kds.py

