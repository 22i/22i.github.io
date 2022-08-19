#!/bin/bash

# to get this command run sudo apt install wkhtmltopdf

# WORKS WORKS WORKS legacy wkhtml
# wkhtmltoimage --quality 100 --width 1600 --height 900 ../../../index.html website_preview.png

# newer wkhtmltoimage
# https://duckduckgo.com/?t=ffab&q=linux+Warning%3A+Blocked+access+to+file&ia=web
# This is caused by the change of default behavior in version 0.12.6 of wkhtmltopdf. wkhtmltopdf disables local file access by default now. It could be solved by adding the command line parameter --enable-local-file-access
wkhtmltoimage --enable-local-file-access --quality 100 --width 1600 --height 900 ../../../index.html website_preview.png

# does not work since it captures with this screen size
# wkhtmltoimage --quality 100 --width 250 --height 182 ../../../index.html website_preview1.png


# wkhtmltoimage --quality 100 --width 1750 --height 1274 ../../../index.html website_preview1.png


# resize the image to 250x182 times 7
# convert -size 1600x900 website_preview.png -resize 250x182 ../../../content/img/tutorials/website.png


# convert website_preview1.png -resize 250x182 ../../../content/img/tutorials/website.png


# wkhtmltoimage --quality 100 --width 1750 --height 1274 https://w-henderson.github.io/ 1.png

# convert 1.png -resize 250x182! ../../../content/img/tutorials/website.png

# convert 1.jpg -resize 250x182! test.jpg

# rm -f 1.png


# convert website_preview.png -resize 250x182! ../../../content/img/tutorials/website.png


echo done everything
