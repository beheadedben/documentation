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
>```
> $ apt update && pkg install openssh
>```

Run the ssh daemon with:
>```
> $ sshd
>```

To connect from your desktop to your android device
> ```
> $ ssh u0_a115@192.168.178.45 -p 8022
> ```
> Where `u0_a115` is the username.
> To find your username use `whoami` in your termux session, and use `passwd` to set your password

If the shell is buggy, add the following to your termux `.bashrc` file
>```
>export TERM=xterm-256color
>```

## Resources
https://mansoorbarri.com/guides/termux-ssh/
