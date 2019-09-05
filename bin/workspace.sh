#!/bin/bash

# $1 = false,true SHIFT
SHIFT=$1
# $2 = false,true ALT
ALT=$2
# $3 = 1-3
LEFT=$3
RIGHT=$3+3

if [[ $SHIFT == true ]]; then
	bspc node -d ^1:^$LEFT
elif [[ $ALT == true ]]; then
	bspc node -d ^2:^$RIGHT
fi

bspc desktop -f ^1:^$LEFT
bspc desktop -f ^2:^$RIGHT
