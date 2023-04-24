#!/bin/sh
#https://github.com/zengfr/armbian-ubuntu-scripts
#sudo apt update
sudo apt install ttf-wqy-zenhei -y
sudo apt install xfonts-intl-chinese
sudo apt install xfonts-wqy
#sudo dpkg-reconfigure locales
#sudo nano /etc/default/locale 设置:LANG=en_US.UTF-8
sudo fc-cache -v 