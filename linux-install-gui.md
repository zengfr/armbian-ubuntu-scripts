Hi guys after a little research I wanted to share an answer too!

https://github.com/zengfr/armbian-ubuntu-scripts

Some more info can be found here https://help.ubuntu.com/community/ServerGUI. 

I assume you start with a clean install of Ubuntu Server 16.04 (some modifications may be needed for older versions of Ubuntu). 

Depending on your needs you can do these:

### Minimal GUI:

sudo apt install xorg

sudo apt install --no-install-recommends openbox

Run the command startx and openbox will start (you can open a terminal there and run any application you want)

### Minimal GUI with display manager:

sudo apt install xorg

sudo apt install --no-install-recommends lightdm-gtk-greeter

sudo apt install --no-install-recommends lightdm

sudo apt install --no-install-recommends openbox

After reboot you will see the lightdm login menu.

### A more functional minimal desktop environment (the one I use):

sudo apt install xorg

sudo apt install --no-install-recommends lightdm-gtk-greeter

sudo apt install --no-install-recommends lightdm

sudo apt install --no-install-recommends lxde-icon-theme

sudo apt install --no-install-recommends lxde-core

sudo apt install --no-install-recommends lxde-common

sudo apt install --no-install-recommends policykit-1 lxpolkit

sudo apt install --no-install-recommends lxsession-logout

sudo apt install --no-install-recommends gvfs-backends

EXPLANATION: lxde-icon-theme is needed for basic icons(there are alternatives), lxde-core and lxde-common will install the basic lxde components, policykit-1 andlxpolkit are needed to run pkexec, lxsession-logout is needed so that the logout menu works, gvfs-backends is needed if you want trash,network,devices etc support at pcmanfm

### A full lightweight desktop environment:

sudo apt install xorg

Then choose one of these:

sudo apt install --no-install-recommends lubuntu-core
OR

sudo apt install --no-install-recommends xubuntu-core
OR

sudo apt install --no-install-recommends ubuntu-mate-core

EXPLANATION: Each of these metapackages is based on lxde,xfce and mate desktop respectively including dependencies such as alsa, lightdm etc. and with many more packages such as themes, configurations etc.

### A full lightweight desktop environment without minding the recommendations:

Choose one of these:

sudo apt install lubuntu-core
OR

sudo apt install xubuntu-core
OR

sudo apt install ubuntu-mate-core

EXPLANATION: Almost the same as 4 (including full xorg installation) but with many more packages such as bluetooth, printers, scanner support, different themes and fonts, basic gnome tools etc.

### A full desktop with all the extras (better choose another option):

Choose one of these:

sudo apt install lubuntu-desktop
OR

sudo apt install xubuntu-desktop
OR

sudo apt install ubuntu-mate-desktop
OR

sudo apt install ubuntu-gnome-desktop
OR

sudo apt install ubuntu-desktop
OR

sudo apt install kubuntu-desktop

EXPLANATION: This will install everything that the live cd of each ubuntu flavor installs (that means even the media players or whatever they find useful for their flavor. So, it's not recommended option

- TIP1: The --no-install-recommends options applies to all dependencies packages recursively so I first install xorg package to make sure all graphic drivers and other packages are installed and so that my system is portable even if I change motherboard or GPU. Some people install only components of xorg but I've never been able to create a usable system this way.

- TIP2: If an option you choose installs network-manager and network-manager-gnome then better use it to configure your network and delete everything at /etc/network/interfaces file (except the lo interface) in order to avoid conflicts.

- TIP3: If you need remote desktop via x11vnc then choose option 2 to 6 (I think you also need to add option -auth guess and -loopso that vnc works before you login and after you logout)

- TIP4: At options 2 to 6 if you wanna stop lightdm autostarting then run the command sudo systemctl disable lightdm and you can start it whenever you want with sudo systemctl start lightdm. To re-enable it run sudo systemctl enable lightdm and check it with systemctl is-enabled lightdm (sometimes you can't re-enable it and the is-enabled commands has output static so run sudo apt install --reinstall lightdm to fix it)

- TIP5: There is also another option (which I left out on purpose). You can install the specific desktop environment metapackage like lxde, xfce4, mate-desktop-environment, plasma-desktop, unity, gnome. However, you will need more packages than just xorg in most cases and these packages or metapackages might install packages that are not longer preferred by any Ubuntu flavor. For example lxde installs wicd as recommendation when all flavors (including lubuntu) use network-manager and network-manager-gnome nowadays. To see differences between packages you can search here: http://packages.ubuntu.com/

- TIP6: If upon boot you see the greeter and it throws you back to tty again, then simply restart the lightdm by firing sudo service lightdm restart