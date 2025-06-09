# FFMPEG Cheatsheet

To cut a video from the start to time 37 seconds use the following:
>```
> $ ffmpeg -i input.mp4 -ss 00:00:00 -to 00:37 -c copy output.mp4
>```
