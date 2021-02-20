#!/bin/bash

# RECREATES THE ICON

# # # # # # # # # # # 
# ICON UPDATE
# # # # # # # # # # # 


# go inside lib folder then icons folder then solid folder
# content/scripts/update_website/
cd $PWD/lib/icons/solid
# content/scripts/update_website/lib/icons/solid

# remove everything inside from folder 2 that is ../ up a directory
rm --force --recursive ../2/*

# remove everything inside from folder 3 that is ../ up a directory
rm --force --recursive ../3/*


echo $PWD

# content/scripts/update_website/lib/icons/solid
cd ../../../../../../
# root


iconupdates=`grep zzdsaoiwejiKJAOSDJXVNkldfskjdf index.html|sed 's/[^0-9]*//g'`

# read line number from variable updates from all_the_names text file into variable read
iconread=`head -$iconupdates $PWD/content/scripts/update_website/lib/icons/icons | tail +$iconupdates`

cd $PWD/content/scripts/update_website/lib/icons/solid

cp -f $iconread ../3/

favicon=$iconread

echo $favicon

# go up a directory and into folder 3
# content/scripts/update_website/lib/icons/solid
cd ../3/
# content/scripts/update_website/lib/icons/3

# remove 4 bytes from beggining or 4 characters or just <svg from up a folder inside folder 2 in icon.svg
tail -c +5 *.svg > ../2/icon.svg

# /content/scripts/update_website/lib/icons/3
cd ../../../../../../
# root



iconupdates=`grep iuteIrewJerwfsdJJJrewrUUAAHH index.html|sed 's/[^0-9]*//g'`


cd $PWD/content/scripts/update_website/lib/icons/2



# read line number from variable updates from all_the_names text file into variable read
color=`head -$iconupdates ../../colors-by-shade | tail +$iconupdates`



# add text inside the svg with variable color
sed -i '1i <svg style="fill:'$color';"' icon.svg

# go up a folder 3 times
# content/scripts/update_website/lib/icons/3
cd ../../../
# content/scripts/update_website/

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--amazing85ghfzu6ud573Z22i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i '/amazing85ghfzu6ud573Z22i/c<!--amazing85ghfzu6ud573Z22i--><!--'$color' '$favicon'-->' ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
# echo changed website favicon to: $color $favicon

# removes everything inside folder 3 which is located in /lib/icons/
rm --force --recursive $PWD/lib/icons/3/*

echo done everything
