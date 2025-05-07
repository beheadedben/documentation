# Slax Linux installation on USB key

Slax is a portable linux distribution designed to run off usb sticks. It comes with two flavours: 
one based on Slackware and one based on Debian. 

Download your favourite flavour from (slax.org), you will have to fill a form and receive 
an automatic email with the download link.

If `sdb` is your usb key (find that out with `lsblk`) run the following:
>```
>$ sudo fdisk /dev/sdb
>```

And create a new MBR partition scheme and a new primary partition that takes up all the space of your key.

Format your USB key as FAT32 with the following, assuming `sdb` is the correct device.
>```
>$ sudo mkfs.vfat /dev/sdb
>```

Now open your slax file image and copy the `/slax` folder to `/mnt/sdb`
Go into `/slax/boot` and run `bootinst.bat`.

All changes made to Slax will be automatically persistent at reboot.

# Customisation

To change the default wallpaper, substitute `/usr/share/wallpapers/slax_wallpaper.jpg` with another image.
If you are running the debian based version you can install all your software through apt.

>```
>$ apt update && apt upgrade
>```

>```
> $ apt install keepassxc nodejs curl git openjdk-17-jre composer npm
>```

To install the rustup toolchain:
>```
>$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
>```
