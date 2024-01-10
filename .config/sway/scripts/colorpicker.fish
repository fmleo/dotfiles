#!/usr/bin/fish
set position $(slurp -b 00000000)
set color $(grim -g "$position" -t png - \
        | convert - -format '%[pixel:p{0,0}]' txt:- \
        | tail -n 1 \
        | cut -d ' ' -f 4
)

echo $color
