#https://github.com/zengfr/armbian-ubuntu-scripts/
#sudo apt install gnome-session gnome-terminal chrome-gnome-shell gnome-tweaks
#sudo apt install ubuntu-desktop-minimal
#sudo apt install --no-install-recommends xorg xubuntu-core
#sudo apt install ibus ibus-libpinyin
#https://github.com/danielabrantes/Debian11-Xfce4-Minimal-Install/blob/main/xfce-install.sh

sudo add-apt-repository ppa:mozillateam/ppa -y
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update

sudo apt install net-tools zip unzip wget less nano
sudo apt install armbian-firmware

sudo apt install --no-install-recommends xorg xinit dbus-x11
sudo apt install dwm xserver-xorg x11-xserver-utils 
#xrandr

sudo apt install xrdp xserver-xorg-core xserver-xorg-input-all
sudo adduser xrdp ssl-cert
echo xfce4-session >~/.xsession
echo xfce4-session >/root/.xsession
#sudo systemctl start xrdp
sudo systemctl enable xrdp
#sudo systemctl status xrdp.service 
#sudo netstat -antup|grep xrdp
#sudo systemctl stop firewalld.service
#sudo systemctl disable firewalld.servie


sudo apt install gedit gparted bleachbit network-manager
sudo apt install plank conky nautilus nautilus-admin 
#sudo apt install xcompmgr #@xcompmgr -n
sudo apt install firefox-esr chromium-browser 
sudo apt install remmina remmina-plugin-vnc remmina-plugin-rdp cockpit
sudo apt install libreoffice-calc mame

sudo apt install ttf-wqy-zenhei -y
sudo apt install xfonts-intl-chinese xfonts-wqy
sudo apt install ibus ibus-libpinyin language-pack-zh-hans


sudo apt install --no-install-recommends lightdm lightdm-gtk-greeter
sudo apt install --no-install-recommends xfce4 xfce4-goodies 
# icons fix
#sudo apt install xubuntu-icon-theme gnome-colors-common adwaita-icon-theme-full
#sudo apt install ubuntu-wallpapers-jammy xubuntu-icon-theme xfwm4-themes gnome-backgrounds

sudo apt install xubuntu-core
#sudo apt install --no-install-recommends xubuntu-desktop
#sudo apt install --no-install-recommends openbox obconf obmenu obsession openbox-themes libgl1-mesa-dri libpam-systemd xcompmgr #@xcompmgr -n

#apt-cache depends gnome-shell | grep evolution- 

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
sudo ./WhiteSur-gtk-theme/install.sh

sudo apt autoremove
sudo apt autoclean 
sudo apt clean 
sudo apt autoremove 

# 安装管理工具
#sudo apt-get install network-manager

# 查看网络设备
sudo nmcli dev
sudo nmcli r wifi on
sudo nmcli dev wifi
sudo dmesg | grep Bluetooth
#sudo apt install smartmontools
#sudo smartctl -a /dev/mmcblkX
#hdmi可以使用的 401a，311，b863av3.2-m以上三种测试过

#sudo nano /etc/default/locale
#LANG="zh_CN.UTF-8"
#LC_ALL="zh_CN.UTF-8"
