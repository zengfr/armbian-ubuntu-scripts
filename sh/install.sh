#!/bin/sh
#https://github.com/zengfr/armbian-ubuntu-scripts
sudo chmod 777 ./*.sh
sudo ./install-base.sh
sudo ./install-vt.sh
sudo ./install-lang-zh.sh
sudo ./install-tool.sh
sudo ./install-soft.sh
sudo ./install-xrdp.sh
sudo ./install-clean.sh