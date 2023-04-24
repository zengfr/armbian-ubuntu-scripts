# armbian-ubuntu-scripts
armbian-ubuntu-scripts
~~~
https://github.com/zengfr/armbian-ubuntu-scripts
~~~
### Install
~~~
sudo git clone https://github.com/ophub/amlogic-s9xxx-armbian.git
sudo chmod 777 ./*.sh
sudo ./install.sh
~~~
~~~
sudo cat ./install.sh

#!/bin/sh
sudo chmod 777 ./*.sh
sudo ./install-base.sh
sudo ./install-vt.sh
sudo ./install-lang-zh.sh
sudo ./install-tool.sh
sudo ./install-soft.sh
sudo ./install-xrdp.sh
sudo ./install-clean.sh
~~~

### Tutorial 
- xrdp  https://my.oschina.net/zengfr/blog/8671191
- gui   https://github.com/zengfr/armbian-ubuntu-scripts/blob/main/linux-install-gui.md
- conky https://my.oschina.net/zengfr/blog/8601189
- i3-wm
- sway-wm  
- vnc
- arch http://www.manongjc.com/detail/62-hgvhplgrokrtcte.html https://www.jianshu.com/p/f5447626dcc4

### Video & Preview
- https://www.bilibili.com/video/BV1XT411p7Ku/
- https://www.bilibili.com/video/BV1FV4y197T9/

### Other Support
Support for Armbian in Amlogic, Rockchip and Allwinner boxes. Support a311d, s922x, s905x3, s905x2, s912, s905d, s905x, s905w, s905, s905l, rk3588, rk3568, rk3399, rk3328, h6, etc.

The Armbian system is a lightweight Linux system based on Debian/Ubuntu built specifically for ARM chips. The Armbian system is lean, clean, and 100% compatible and inherits the functions and rich software ecosystem of the Debian/Ubuntu system. It can run safely and stably in TF/SD/USB and the eMMC of the device.

Now you can replace the Android TV system of the TV box with the Armbian system, making it a powerful server. This project builds Armbian system for Amlogic, Rockchip and Allwinner boxes. including install to eMMC and update kernel related functions.

- https://github.com/ophub/amlogic-s9xxx-armbian
- https://github.com/zengfr/ArmBian_AMLOGIC_DESKTOP
- https://github.com/zengfr/armbian-ubuntu-scripts