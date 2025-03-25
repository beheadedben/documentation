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
> ```
> export TERM=xterm-256color
> ```

To install any package e.g `nodejs` run the following
> ```
> $ apt update && apt upgrade
> $ pkg install nodejs
> ```

## Use PlantUML from Termux
Because you need an X11 server installed to compile plantuml in termux,
it's way easier if you give the job to a web server like `www.plantuml.com`

After you've created your `myDiagram.puml` file,
download `encodePuml.js` and `runPuml.sh` and run:
> ```
> $ npm install plantuml-encoder
> ```

> ```
> $ chmod +x runPuml.sh
> ```

Now to generate your PlantUml file as png
> ```
> $ ./runPuml.sh myDiagram.puml
> ```

## Resources
https://mansoorbarri.com/guides/termux-ssh/
