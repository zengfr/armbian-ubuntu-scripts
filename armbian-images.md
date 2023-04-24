armbian-images

scripts: https://github.com/zengfr/armbian-ubuntu-scripts

### aml-s9xx-box
- https://github.com/ophub/amlogic-s9xxx-armbian
- aml-s9xx-box https://imola.armbian.com/dl/aml-s9xx-box/archive/

### rk322x-box 
- https://forum.armbian.com/topic/12656-csc-armbian-for-rk322x-tv-boxes/
- https://github.com/jhswartz/rk3229
- https://github.com/jhswartz/rk3229/blob/master/SDMMC-INSTALL.md
- https://armbian.hosthatch.com/archive/rk322x-box/archive/
- rk322x-box   https://imola.armbian.com/dl/rk322x-box/archive/
### Tanix TX6
- https://github.com/smlinux/armbian-tanix-tx6
### AllWinner H616
- https://github.com/EchoHeim/Allwinner-H616
- https://linux-sunxi.org/FEL/USBBoot

###    

1.查看现有的swap,使用命令
cat /proc/swaps或者swapon -s
2.然后禁用当前swapswapoff /dev/zram1
3.禁用zram服务,修改文件/etc/default/armbian-zram-config，将第一行的启用ENABLED=true改为ENABLED=false
4.禁用zram的/var/log,修改/etc/default/armbian-ramlog，将第一行的启用ENABLED=true改为ENABLED=false
5.禁用定时截断任务/etc/cron.d/armbian-truncate-logs,定时任务前加#注释
6.禁用另一个任务，修改文件/etc/cron.daily/armbian-ram-logging如下，同样是加井号注释


打开/usr/lib/armbian/armbian-ramlog脚本，它实际执行的是这个shell方法：
syncToDisk () {
	# no sync to protect emmc
	return 0
	isSafe
	
	
	
	
	
	
	
	
	
more /sys/kernel/debug/mmc2/ios




root@armbian:/boot/dtb# dtc -I dtb -O dts -o meson-g12a-s905l3a-e900v22c.dts amlogic/meson-g12a-s905l3a-e900v22c.dtb
dtc -I dts -O dtb -o amlogic/meson-g12a-s905l3a-e900v22c.dtb meson-g12a-s905l3a-e900v22c.dts

用带搜索功能的文本编辑器打开，搜索mmc@ffe0700，将max-frequency里面内容改成0x5f5e100。 作者：量子少年_持续低熵 https://www.bilibili.com/read/cv23098625/ 出处：bilibili