#!/usr/bin/bash

#run install_pf_ring() first
git clone https://github.com/ntop/PF_RING.git /root/.
cd /root/PF_RING/kernel
make && insmod ./pf_ring.ko
cd ../userland && make

bro_depens="git cmake make gcc g++ flex bison libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev mailutils "
echo "Installing needed packages:\n"+$bro_depens
apt update -y && apt upgrade -y && apt install -y +$bro_depens
git clone --recursive git://git.bro.org/bro /root/.
cd bro
./configure --with-pcap=/usr/local/lib && make && make install
ln /usr/local/bro/bin/* /usr/bin

echo "REMEMBER TO MAKE SURE INTERFACE IS CORRECT AT"
echo "/usr/local/bro/etc/node.cfg"
echo "REMEMBER TO MAKE SURE NETWORKS ARE CORRECT AT"
echo "/usr/local/bro/etc/network.cfg"
