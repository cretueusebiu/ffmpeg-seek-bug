# ffmpeg-seek-bug

```bash
# Convert the first 5 seconds of audio
ffmpeg -hide_banner -y -ss 0 -t 5 -i input.mp3 -codec:a flac chunk-1.flac

# Convert the next 5 seconds of audio
ffmpeg -hide_banner -y -ss 5 -t 5 -i input.mp3 -codec:a flac chunk-2.flac

# Concatenate both chunks
ffmpeg -hide_banner -y -safe 0 -f concat -i input.txt -codec:a flac output.flac
```

Now play `output.flac` and you'll notice a gap between seconds 4 and 5.

In the screenshot bellow you can see the original input and the chunks as well as the final output with a gap between the two chunks.

![screenshot](screenshot_1.png)
