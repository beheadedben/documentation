# FFMPEG Cheatsheet

To cut a video from the start to time 6 seconds use the following:
>```
> $ ffmpeg -i input.mp4 -ss 00:00:00 -t 00:06:00 -c copy output.mp4
>```
