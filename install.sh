#https://github.com/zengfr/armbian-ubuntu-scripts/
#sudo apt install gnome-session gnome-terminal chrome-gnome-shell gnome-tweaks
#sudo apt install ubuntu-desktop-minimal
#sudo apt install --no-install-recommends xorg xubuntu-core
#sudo apt install ibus ibus-libpinyin

sudo wget https://github.com/zengfr/armbian-ubuntu-scripts/raw/main/install-gui-mini.sh
sudo chmod 777 ./*.sh
sudo cat ./install-gui-mini.sh
sudo nano ./install-gui-mini.sh
sudo ./install-gui-mini.sh