# flac codec
ffmpeg -y -i input.mp3 -af atrim=0:5 -codec:a flac chunk-1.flac
ffmpeg -y -i input.mp3 -af atrim=5:10 -codec:a flac chunk-2.flac
ffmpeg -y -safe 0 -f concat -i input-flac.txt -codec:a flac output.flac

# aac codec (or libfdk_aac)
ffmpeg -y -i input.mp3 -af atrim=0:5 -codec:a aac chunk-1.m4a
ffmpeg -y -i input.mp3 -af atrim=5:10 -codec:a aac chunk-2.m4a
ffmpeg -y -safe 0 -f concat -i input-aac.txt -codec copy output.m4a