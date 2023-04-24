#!/bin/sh
#https://github.com/zengfr/armbian-ubuntu-scripts
#sudo apt update 
sudo apt install xrdp

sudo adduser xrdp ssl-cert
#echo xfce4-session >~/.xsession
sudo systemctl start xrdp
sudo systemctl enable xrdp
sudo systemctl status xrdp.service #如果看到Active则说明正常
sudo netstat -antup|grep xrdp #看xrdp和xrdp-sesman是否正常启动

sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.servie

# 安装通用显卡驱动
#pacman -S xf86-video-vesa
# 安装 X 图形服务
#pacman -S xorg-server xorg-xinit xorg-utils xorg-server-utils mesa xorg-twm xterm

#init 3 # 启动完全多用户模式
#init 5 # 启动X11图形界面
#init 6 # 重启


#打开 “~/.vnc/xstartup” 文件，添加两行
#unset SESSION_MANAGER
#unset DBUS_SESSION_BUS_ADDRESS

