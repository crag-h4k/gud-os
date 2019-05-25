#!/bin/bash

bro_depens="git cmake make gcc g++ flex bison libmaxminddb-dev libmaxminddb0 libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev mailutils "
echo "Installing needed packages:\n"$bro_depens
apt install -y $bro_depens
git clone --recursive git://git.bro.org/bro /root/bro
cd /root/bro
./configure && make && make install
