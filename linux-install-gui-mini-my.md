### linux-install-gui-mini-my.md
sudo apt install --no-install-recommends yum xorg xinit dwm plank gparted

debian ubuntu armbian linux
### linux-install-gui-mini-my.md
server自己配桌面，可以最小化安装。

legacy server比live server更小，虚拟机用来部署编译环境最好了。

其实还有更小的ubuntu-base版，但是那个安装配置太麻烦了。



sudo apt install xfce4 xfce4-goodies --no-install-recommends

xfce4-goodies包括终端、任务管理器等常见的程序，推荐同时安装。

这个时候使用startx是无法启动的，提示缺少xinit,需要正常安装，关闭安装推荐还是无法启动xfce4：

sudo apt install xinit

然后使用startx就可以进入xfce4桌面了。

装完后虚拟机文件大小共3.06G，内存使用500M左右。




好像无法使用开始菜单关闭，需要在终端使用sudo shutdown -h now关闭。

可以重装一下xfce4修复一些bug。

sudo apt purge xfce4

sudo apt install xfce4

这时候不用禁用安装推荐，安装包也小很多，从1G减少到33M了，很多无关的组件都不会安装了。
