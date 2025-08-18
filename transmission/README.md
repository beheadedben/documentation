# Download Torrents with Transmission

Transmission comes in different toolkits as GTK and QT. To download the basic cli version
in Tumbleweed, run:
>```
> $ sudo zypper in transmission
>```

Then, to download a torrent, run the following:
>```
> $ transmission-cli --download-dir path/to/download_directory url|magnet|path/to/file
>```
> You can use a magnet link or the path to your `.torrent` file.
