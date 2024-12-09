## Tor Service Self-Hosting
Install the tor package
>In openSUSE run the following command
>```
>$ sudo zypper in tor
>```

Now open `/etc/tor/torrc`
>```
>$ sudo vim /etc/tor/torrc
>```
> Add the following part
>```
>HiddenServiceDir /var/lib/tor/hidden_service
>HiddenServicePort 80 127.0.0.1:80
>```
>Where `hidden_service` is the name of the service (like `anonsite_service`)

Now restart tor
>```
>$ sudo systemctl restart tor
>```

To see your onion address run
>```
>$ cat /var/lib/tor/hidden_service/hostname
>```
