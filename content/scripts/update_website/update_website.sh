#!/bin/bash

# video help https://www.youtube.com/watch?v=ruieT3Nkg2M

# https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell


# THIS SCRIPT UPDATES THE WEBSITE VERSION, FAVICON, NAME, PREVIEW and THE WEBSITE ITSELF
# IT COMMITS WITH A MESSAGE THAT IS INSIDE message.txt



# UPDATE THE FAVICON WEBSITE ICON

# go inside lib folder then lib folder then icons folder then solid folder
# content/scripts/update_website/
cd $PWD/lib/icons/solid
# content/scripts/update_website/lib/icons/solid

# remove everything inside from folder 2 that is ../ up a directory
rm --force --recursive ../2/*

# remove everything inside from folder 3 that is ../ up a directory
rm --force --recursive ../3/*



# to make it faster copy 1 random file from solid into folder 3 that is up a directory
# https://unix.stackexchange.com/questions/217712/randomly-copy-certain-amount-of-certain-file-type-from-one-directory-into-anothe#217720
shuf -zn1 -e *.svg | xargs -0 cp -t ../3/

favicon=`ls ../3`


# go up a directory and into folder 3
# content/scripts/update_website/lib/icons/solid
cd ../3/
# content/scripts/update_website/lib/icons/3

# if there is no style then add it
# style="fill:white;"
# remove 4 bytes from beggining or 4 characters or just <svg
# for i in *; do
# tail -c +5 $i > ../2/$i; done
tail -c +5 *.svg > ../2/icon.svg





# if there is no style then add it
# style="fill:white;"
# remove 4 bytes from beggining
# dd bs=1131 skip=1 if=filtered.dump of=trimmed.dump
# for i in *; do
# tail -c +5 $i > ../1/$i; done


# if there is no style then add it
# style="fill:white;"
# remove 4 bytes from beggining
# dd bs=1131 skip=1 if=filtered.dump of=trimmed.dump
# tail -c +5 yin-yang.svg > ../../../amazing.svg


# cd ../../../


# add svg color to begining of the file
# <svg
# go up a folder and into folder 2
cd ../2/
# for i in *; do
# put a random line from colors text file that is 2 folders up into variable color
color=`shuf -n 1 ../../colors`
# add text inside the svg with variable color
# sed -i '1i <svg style="fill:'$color';"' $i; done
sed -i '1i <svg style="fill:'$color';"' icon.svg

# add svg color to begining of the file
# <svg
# cd ../1/
# for i in *; do
# sed -i '1i <svg style="fill:white;"' $i; done
# color=`shuf -n 1 ../../colors`
# sed -i '1i <svg style="fill:'$color';"' $i; done


# add svg color to begining of the file
# <svg
# sed -i '1i <svg style="fill:white;"' amazing.svg

# go up a folder
# content/scripts/update_website/lib/icons/3
cd ../
# content/scripts/update_website/lib/icons/

# ls 3 > ../1.list


# favicon=`shuf -n 1 ../1.list`

# favicon=`ls 2`

# content/scripts/update_website/lib/icons/
cd ../../
# content/scripts/update_website/

# get random line from all_the_names and put it into variable favicon
# https://stackoverflow.com/questions/448005/whats-an-easy-way-to-read-random-line-from-a-file-in-unix-command-line
# favicon=`shuf -n 1 font-awesome-icons-list` && echo $name
# favicon=`shuf -n 1 font-awesome-icons-list`

# THE ICON ORIGINAL
# <!--amazing8543G345IrZ73Z22i--><link rel="shortcut icon" type="image/png" href="content/img/pixel16.png">

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--amazing8543G345IrZ73Z22i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
# sed -i '/amazing8543G345IrZ73Z22i/c<!--amazing8543G345IrZ73Z22i--><link rel="icon" sizes="any" type="image/svg+xml" href="content/scripts/update_website/lib/icons/2/'$favicon'">' ../../../index.html

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--amazing85ghfzu6ud573Z22i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i '/amazing85ghfzu6ud573Z22i/c<!--amazing85ghfzu6ud573Z22i--><!--'$color' '$favicon'-->' ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
echo changed website favicon to: $color $favicon

rm --force --recursive $PWD/lib/icons/3/*



# change website name to random video game name
# content/scripts/update_website/
cd ../generate_name/
# content/scripts/generate_name/
# sh 3_change_website_name.sh

# get random line from all_the_names and put it into variable name
# https://stackoverflow.com/questions/448005/whats-an-easy-way-to-read-random-line-from-a-file-in-unix-command-line
# name=`shuf -n 1 all_the_names` && echo $name
# name=`shuf -n 1 all_the_names`

# THE TITLE ORIGINAL
# <!--amazing63z947ziT9Eas722i--><title>pixel</title>

# searches 3 folders up in the index.html text for line with amazing63z947ziT9Eas722i then replaces it with <!--amazing63z947ziT9Eas722i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
# sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$name</title>" ../../../index.html



# check how many lines all_the_names has
liness=`wc -l all_the_names | sed 's/[^0-9]*//g'`

echo $liness

# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi ../../../index.html|sed 's/[^0-9]*//g'` && echo $lineupdates

# add 1 to the update number
updates=$(echo 1+$lineupdates | bc)

# echo $lineupdate prints what the current update is in the terminal
echo current line is $updates

# if number is bigger then the number of lines reset

while [ $updates -gt $liness ]; do
# switch line 95 with this
sed -i "/amazingTRHFfdhghukTADFSi/c<!--amazingTRHFfdhghukTADFSi--><!--1-->" ../../../index.html
# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi ../../../index.html|sed 's/[^0-9]*//g'` && echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$updates all_the_names | tail +$updates`


# prints the value of variable read
echo $read

# switch line 95 with this
sed -i "/amazingTRHFfdhghukTADFSi/c<!--amazingTRHFfdhghukTADFSi--><!--$updates-->" ../../../index.html

sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$read</title>" ../../../index.html











# prints in the terminal
# echo website name in index.html at line 10 changed to $name
echo changed website name to: $read

# update the website preview
# content/scripts/generate_name/
cd ../website_preview
# content/scripts/website_preview/
sh preview.sh
echo website preview updated for the readme

# update the website update version
# content/scripts/website_preview/
cd ../update_website/
# content/scripts/update_website/

# get line 95 into variable and keep only numbers
# goes up 3 folders
lineupdate=`grep update ../../../version.html|sed 's/[^0-9]*//g'`

# add 1 to the update number
update=$(echo 1+$lineupdate | bc)

# echo $lineupdate prints what the current update is in the terminal
echo current update is $update

# switch line 95 with this
sed -i "s/update.*/update $update/" ../../../version.html

# update website

message=`cat message.txt`

rm -f message.txt

cp "$PWD/lib/message.txt" message.txt

cd ../../../ && echo entered website folder &&

git add . && echo tracked and staged all files &&

git commit -m "$message" && echo commited localy with a message "$message" &&

git push origin master && echo pushed changes to the internet &&

# cd "$PWD/content/scripts/update_website/" && rm -f message.txt && cp "$PWD/lib/message.txt" message.txt && echo done everything

echo done everything

# for the end change every text in message.txt with just one word: update

echo changed website name to: $read

# prints in the terminal
echo changed website favicon to: $color $favicon

echo commited with message: "$message"

echo current update is $update
