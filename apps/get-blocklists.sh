#!/bin/env sh
# Download lists, unpack and filter, write to $(pwd)/blocklists.txt
curl -s https://www.iblocklist.com/lists.php \
    | sed -n "s/.*value='\(http:.*=bt_.*\)'.*/\1/p" \
    | sed "s/\&amp;/\&/g" | sed "s/http/\"http/g" \
    | sed "s/gz/gz\"/g" \
    | xargs curl -L \
    | gunzip \
    | egrep -v '^#' > $(pwd)/blocklist.txt
