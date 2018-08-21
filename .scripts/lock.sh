#!/bin/sh

bg=191314

img=/mnt/DATA/Bilder/lockscreen_scaled.jpg

ring=ffffffff
inside=a3152f7f

ringver=3841a17f
insidever=403e637f

ringwrong=9f202d7f
insidewrong=6134327f

keyhl=e77cdb7f
bshl=582da37f

i3lock-color -i $img \
       --veriftext="checking..." --wrongtext="wrong" --noinputtext="" \
       --insidecolor=$inside --ringcolor=$ring \
       --insidevercolor=$insidever --ringvercolor=$ringver \
       --insidewrongcolor=$insidewrong --ringwrongcolor=$ringwrong \
       --keyhlcolor=$keyhl --bshlcolor=$bshl \
       --linecolor=${bg}ff --separatorcolor=${bg}7f \
       --radius 130 --ring-width 10
