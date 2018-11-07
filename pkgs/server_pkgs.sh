#!/usr/bin/sh
pkgs=" build-essential byobu cmake curl deborphan dtrx git htop gcc g++ libffi-dev libpython3-all-dev mailtools make ncdu net-tools netselect-apt nmap python3-pip python3-jedi sudo tmux tree vim wget zsh "
optional_pkgs=" libssl-dev chromedriver golang tor "

apt install -y netselect-apt
netselect-apt
apt update -y
apt full-upgrade -y
apt install -y $pkgs

update-alternatives --set editor /usr/bin/vim
