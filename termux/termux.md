## Setup Termux For Self-Hosting On Android 5

Download the [legacy v.0.79 termux apk](https://www.archive.org/download/termux-repositories-legacy/termux-v0.79-offline-bootstraps.apk)

Edit `sources.list`
>```
>$ nano /data/data/con.termux/files/usr/etc/apt/sources.list
>```
> And add the following line
> ```
>deb https://packages.termux.dev/termux-main-21 stable main
>```

It is also possible to connect to your termux session
from your computer using ssh. Install `openssh` in termux first.

> ```
> $ ssh u0_a115@192.168.178.45 -p 8022
> ```
> Where `u0_a115` is the username

## Resources
https://mansoorbarri.com/guides/termux-ssh/
