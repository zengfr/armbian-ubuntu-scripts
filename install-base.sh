#!/bin/sh
#https://github.com/zengfr/armbian-ubuntu-scripts
#sudo ifconfig free df -h
#sudo apt install --no-install-recommends
#sudo aptitude install --without-recommends
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo add-apt-repository ppa:graphics-drivers/ppa

sudo apt update
sudo apt install xorg
sudo apt install i3 dwm awesome feh
#sudo apt install --no-install-recommends fluxbox lxqt lightdm
#sudo apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox
#sudo apt install tint2 polybar rofi
sudo apt install --no-install-recommends sddm sddm-theme-elarun
#sudo apt install --no-install-recommends lightdm lightdm-gtk-greeter
#sudo sddm --example-config > /etc/sddm.conf #get a permission denied error. #/usr/share/sddm/themes
sudo sddm --example-config | sudo tee /etc/sddm.conf
#sudo dpkg-reconfigure sddm

sudo xrandr
#sudo xrandr -s 9

#sudo apt install tasksel
#sudo tasksel --list-tasks
#sudo tasksel --task-packages lxqt

#sudo systemctl set-default multi-user.target
#sudo systemctl get-default


#useradd -m -G wheel username
#passwd username
#给予用户sudo权限
#vim /etc/sudoers
#将%wheel ALL=(ALL) ALL取消注释

#sddm修改分辨率
#xrandr --listmonitors
#接着添加以下命令到 /usr/share/sddm/scripts/Xsetup 即可：
#xrandr --output Virtual-1 --mode 1920x1080

#sddm-greeter --test-mode --theme /usr/share/sddm/themes/elarun主题名来预览一个主题
