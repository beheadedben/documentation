# Audio to text with Vosk

First download the the audio file you want to transcribe.
For youtube, use `yt-dlp`
>```
> $ yt-dlp <LINK>
>```

Eventually you can convert the youtube video to WAV,
even if vosk supports mp4, using `ffmpeg`
>```
> $ ffmpeg -i my-video.webm -vn my-video.wav
>```

Now to install vosk, run the following:
>```
> $ pip install vosk
>```
> For externally managed environments you can try
> with the flag `--break-system-packages` at the
> risk of bricking your system.

Now to transcribe your video, use `vosk-trascriber`
>```
> $ vosk-transcriber -i my-video.wav -o my-video.txt --lang it
>```
