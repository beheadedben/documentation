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
> $ apt install keepassxc nodejs curl git openjdk-17-jre composer npm php-curl
>```

To install the latest version of Inkscape, use flatpak.
First install flatpak with:
>```
> $ apt install flatpak
>```

Now add the flathub repo
>```
> $ flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
>```

Install flathub and inkscape with:
>```
> $ flatpak install flathub org.inkscape.Inkscape
>```

To install the rustup toolchain:
>```
> $ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
>```

# Tor Browser Installation
To install the tor browser head over to the official site, downlad the archive and extract it.
You can't run tor as root and so create a new user
>```
> $ adduser myuser
>```

That will create the `home` folder `/home/myuser/`.
Move the `tor-browser` folder into it.

Give permissions as root to the new user
>```
> $ chown -R myuser: /home/myuser/tor-browser
>```

Now give permissions to access the X11 display with:
>```
> $ xhost +SI:localuser:myuser
>```

Log as `myuser`
>```
> $ su myuser
>```

Now run the tor browser with:
>```
> $ cd /home/myuser/tor-browser
>```

>```
> $ ./start-tor-browser.desktop
>```

# Data Recovery

When you shutdown brutally you might become unable to boot your Slax session. In that case 
you should boot with a new session and then run the following commands.

You need xfs_repair which is contained inside of `xfsprogs`.
>```
> $ apt install xfsprogs
>```

This will mount the changes as a single virtual file at `/mnt/virtual.dat`
>```
> $ /run/initramfs/bin/@mount.dynfilefs -f /media/sdb1/slax/changes/1/changes.dat -m /mnt
>```
> Where sdb1 is the slax usb key and 1 is the session name

As you can't boot into slax with the session you are trying to recover,
the virtual.dat XFS filesystem is likely unreadable. To repair it run the following.
>```
> $ xfs_repair -L /mnt/virtual.dat
>```

Mount the filesystem with:
>```
> $ mount -o loop /mnt/virtual.dat /mnt
>```

Now enter `/mnt` and backup your files.

[Slax Docs](https://www.slax.org/starting.php)
