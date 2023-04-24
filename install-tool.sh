#!/bin/sh
#https://github.com/zengfr/armbian-ubuntu-scripts
#sudo apt update 
sudo apt install cpufrequtils

sudo apt install net-tools
sudo apt install network-manager
sudo apt install bluetooth blueman
sudo apt install wireless-tools 
sudo apt install wpasupplicant

#sudo apt install anacron
#sudo apt install avahi-autoipd

sudo systemctl enable bluetooth.service
sudo systemctl restart bluetooth.service
sudo systemctl status bluetooth.service

#iwconfig
#ip link set interface up
#iwlist interface scan | less

#sudo hciconfig
#sudo hcitool scan
#sudo bluetoothctl -a
sudo lsusb
sudo lspci -k
sudo lsmod

#声卡驱动
#sudo pacman -S alsa-utils pulseaudio-alsa

# 查看显卡型号
lspci |grep VGA
# 安装闭源驱动
#（直接一次性全部装上去）
#sudo pacman -S nvidia nvidia-prime nvidia-settings nvidia-utils opencl-nvidia lib32-nvidia-utils lib32-opencl-nvidia
 
 