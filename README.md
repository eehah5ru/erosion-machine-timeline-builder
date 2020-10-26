# erosion timelines generator

## deps
- racket
- mediainfo
- ffmpeg

### racket libs
- predicates
- lathe-comforts
- txexpr
- megaparsack
- monad
- markdown

## snippets
convert videos to small size:
```
for n in *.mp4; do ffmpeg -i $n -vcodec libx264 -crf 22 -r 25 -acodec aac -strict -2 -vf scale=640:360 small/$n; done
```

convert subtitles to vtt format 
```
for n in *.ass; do ffmpeg -i $n small/`basename $n .ass`_en.vtt; done
```


