#!/bin/bash
mkdir -p  $HOME/.vim/view
mkdir -p /home/$SUDO_USER/.vim/view

chown -R $SUDO_USER:$SUDO_USER /home/$SUDO_USER

rsync -a * /etc/vim/.
