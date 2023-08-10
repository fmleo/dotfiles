#!/bin/sh

choices="performance\nbalanced\npower-saver"

curr_mode=$(powerprofilesctl get)

opts="--anchor right "
opts+="--width 20% "
opts+="--height 15% "
opts+="--prompt $curr_mode"

printf $choices | tofi $opts | xargs powerprofilesctl set
