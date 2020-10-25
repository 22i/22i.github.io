#!/bin/bash


# today() {
#   date "+%d.%m.%Y %H:%M"
# }


wkhtmltoimage --quality 100 --width 1600 --height 900 ../../../index.html website_preview.png


# cp songname.txt $PWD/songs/"$(today)".txt


echo done everything





