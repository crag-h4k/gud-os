#!/usr/bin/env sh
pi_pkgs=" build-essential byobu cmake curl dtrx git htop make gcc g++ libffi-dev libpython3-all-dev cmake make gcc g++ flex bison libmaxminddb-dev libmaxminddb0 libpcap-dev libssl1.0-dev python-dev swig zlib1g-dev mailutils mailtools ncdu net-tools netselect-apt nmap python3-pip python3-jedi ranger sudo tree tmux vim-nox vim-pathogen wget zsh nmap wireshark "

apt update -y
apt full-upgrade -y
apt install $pi_pkgs -y
