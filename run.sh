# flac codec
ffmpeg -y -ss 0 -t 5 -i input.mp3 -codec:a flac chunk-1.flac
ffmpeg -y -ss 5 -t 5 -i input.mp3 -codec:a flac chunk-2.flac
ffmpeg -y -safe 0 -f concat -i input-flac.txt -codec:a flac output.flac

# aac codec (or libfdk_aac)
ffmpeg -y -ss 0 -t 5 -i input.mp3 -codec:a aac chunk-1.m4a
ffmpeg -y -ss 5 -t 5 -i input.mp3 -codec:a aac chunk-2.m4a
ffmpeg -y -safe 0 -f concat -i input-aac.txt -codec copy output.m4a