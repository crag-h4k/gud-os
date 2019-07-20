#!/usr/bin/env sh

z_repo_dest="root/zeek"
z_depens="git cmake make gcc g++ flex bison libmaxminddb-dev libmaxminddb0 libpcap-dev libssl-dev python-dev swig zlib1g-dev mailutils "
echo "Installing needed packages:\n"$z_depens

apt install -y $z_depens
git clone --recursive git://github.com/zeek $z_repo_dest

cd $z_repo_dest
./configure --prefix=/opt/zeek --conf-files-dir=/etc/zeek
make
make install
systemctl disable exim4
systemctl stop exim4
