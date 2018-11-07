#!/usr/bin/sh
base_pkgs=" build-essential byobu cmake curl deborphan dtrx git golang htop make gcc g++ libffi-dev libpython3-all-dev libssl-dev mailtools ncdu net-tools netselect-apt nmap python3-pip python3-jedi ranger sudo tree tmux vim wget zsh "
sec_pkgs=" nmap bro broctl wireshark tor psad fail2ban chromium-driver"
wm_pkgs=" chromium feh fonts-hack-otf fonts-hack-ttf fonts-hack-web i3 sddm suckless-tools rxvt-unicode-256color thunar vlc "
de_pkgs="  xfce4 --no-install-recommends "

apt update -y
apt full-upgrade -y
#apt install -y $base_pkgs
apt install -y $wm_pkgs
#apt install -y $sec_pkgs
#apt install -y $de_pkgs
