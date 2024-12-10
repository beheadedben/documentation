## Core Linux manual installation in QEMU
First off, make sure you have installed qemu. You can also use virt-manager if you wish.

> Where `30G` is the size of the image, and so the available size to out virtualized operating system, and `core.img` will be the name of the image itself.
> 
>```
> $ qemu-img create -f qcow2 core.img 30G
>```

Download the Core iso from the [official website](http://www.tinycorelinux.net/downloads.html)

Now run the following command to execute the image created before and load the Core iso file.
>Where `3096 MB` is the amount of RAM given to the virtual machine, `core.img` is the name of the image and `Core-current.iso` is the iso image you just downloaded.
>
>```
>$ qemu-system-x86_64 -m 3096 -hda core.img -cdrom Core-current.iso -boot d
>```

You will have to install a few extensions from the live environment using the Application Browser.

> ```
> $ tce-ab
> ```
> From here install `grub2-multi, cfdisk, lvm2-dev`

From now you will need root privileges  very often so run the following to log as root
>```
>$ sudo su
>```
>You will have to be even more careful at every command you make

You can list your disks and gain more informations about them with the following command.
>```
>$ fdisk -l
>```

To partition the disk
>```
>$ cfdisk
>```
Now,  create a **100M** **primary** partition with the **bootable** flag

Now make an ext3 file system on the partition you just created

>Where `/dev/sda1` is the path of the partition
>```
>$ mkfs.ext3 /dev/sda1
>```
>```
>$ rebuildfstab
>```

Mount the partition
>```
>$ mount /mnt/sda1
>```
>This is equal to
>```
>$ mount /dev/sda1 /mnt/sda1
>```

>```
>$ mkdir -p /mnt/sda1/boot/grub
>```

Mount the Core iso
>```
>$ mount /mnt/sr0
>```

Copy all the files from the boot folder in the iso to the boot folder in the boot partition
>```
>$ cp -p /mnt/sr0/boot/* /mnt/sda1/boot
>```

Create the `tce`, tinycore extensions, folder
>```
>$ mkdir -p /mnt/sda1/tce
>```
> It will contain all the extensions loaded at boot

Create `mydata.tgz` where all the personal files in `/opt` and `/home` are going to be stored for persistency
>```
>$ touch /mnt/sda1/tce/mydata.tgz
>```

Copy grub files from `/usr/lib/grub/i386-pc/` to the grub folder
>```
>$ cp -p /usr/lib/grub/i386-pc/* /mnt/hda1/boot/grub/
>```

Copy the grub2 files of the installed extension from `/tmp` to the grub folder
>```
>$ cp -p /tmp/tcloop/grub2multi/usr/lib/grub/i386-pc/* /mnt/hda1/boot/grub/
>```

Install grub and specify the boot directory
>```
>$ sudo grub-install --boot-directory=/mnt/sda1/boot /dev/sda
>```

Edit the grub options in `menu.lst`

>```
>$ vi /mnt/sda1/boot/grub/menu.lst
>```
 Here add the following code
>```
>search --no-floppy --fs-uuid --set=root "fdsf-gt434"
>	menuentry "Core" {
>		linux /boot/vmlinuz quiet waitusb=5 tce=sda2 home=sda2 opt=sda2
>		initrd /boot/core.gz
>	}
>```

Create a symlink from `menu.lst` to `grub.conf`, the filename searched by the os
>```
>$ ln -T /mnt/sda1/boot/grub/menu.lst /mnt/sda1/boot/grub/grub.conf
>```

Map `/dev/sda` as the default device loaded by grub
>```
>$ echo '(hd0) /dev/sda' >grub-device.map
>```

Example of CLI installation of extensions without the App Browser
>```
>$ tce-load -wi cfdisk grub-0.97-splash
>```

## Notes
boch, swrast, xorg-server, dwm, xorg-3d, graphics tinycore, acclelerated graphics

## Resources
1. https://distro.ibiblio.org/tinycorelinux/install_manual.html
2. https://wiki.tinycorelinux.net/doku.php?id=wiki:install_core 
3. http://tinycorelinux.net/9.x/x86/tcz/
4. https://www.qemu.org/docs/master/system/images.html 
6. https://iotbytes.wordpress.com/install-microcore-tiny-linux-on-local-disk/
7. https://www.linuxquestions.org/questions/linux-newbie-8/getting-tinycore-to-work-882045/
8. https://askubuntu.com/questions/54814/how-can-i-ctrl-alt-f-to-get-to-a-tty-in-a-qemu-session
