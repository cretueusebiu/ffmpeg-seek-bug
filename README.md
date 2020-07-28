# ffmpeg-seek-bug

```bash
ffmpeg -hide_banner -y -ss 0 -t 5 -i input.mp3 -codec:a flac chunk-1.flac
ffmpeg -hide_banner -y -ss 5 -t 5 -i input.mp3 -codec:a flac chunk-2.flac
ffmpeg -hide_banner -y -safe 0 -f concat -i input.txt -codec:a flac output.flac
```
