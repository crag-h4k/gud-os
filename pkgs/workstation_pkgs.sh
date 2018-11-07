#!/usr/bin/sh
base_pkgs=" build-essential byobu cmake curl deborphan dtrx git golang htop make gcc g++ libffi-dev libpython3-all-dev libssl-dev ncdu net-tools netselect-apt nmap python3-pip python3-jedi sudo tree tmux vim wget zsh "
wm_pkgs=" chromium fonts-hack-otf fonts-hack-ttf fonts-hack-web i3 lightdm suckless-tools rxvt-unicode-256color thunar vlc "
de_pkgs="  xfce4 --no-install-recommends "

apt update -y
apt full-upgrade -y
apt install $base_pkgs $de_packages $wm_pkgs
