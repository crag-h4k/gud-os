#!/bin/bash
media_pkgs=" deluge deluged deluge-web "
apt update -y
apt install -y $media_pkgs
# Download lists, unpack and filter, write to stdout
curl -s https://www.iblocklist.com/lists.php | sed -n "s/.*value='\(http:.*=bt_.*\)'.*/\1/p" | sed "s/\&amp;/\&/g" | sed "s/http/\"http/g" | sed "s/gz/gz\"/g" | xargs curl -L | gunzip | egrep -v '^#' > /etc/deluge/blocklist.txt

