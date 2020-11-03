#!/bin/bash

# video help https://www.youtube.com/watch?v=ruieT3Nkg2M

# https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell


# THIS SCRIPT UPDATES THE WEBSITE FAVICON, NAME, WEBSITE PREVIEW and THE WEBSITE
# IT COMMITS WITH A MESSAGE THAT IS INSIDE message.txt



# UPDATE THE FAVICON WEBSITE ICON

# go inside lib folder
cd $PWD/lib/icons/solid



rm --force --recursive ../2/*

rm --force --recursive ../3/*



# to make it faster copy 1 random file from solid
# https://unix.stackexchange.com/questions/217712/randomly-copy-certain-amount-of-certain-file-type-from-one-directory-into-anothe#217720
shuf -zn1 -e *.svg | xargs -0 cp -t ../2/

cd ../2/

# if there is no style then add it
# style="fill:white;"
# remove 4 bytes from beggining
# dd bs=1131 skip=1 if=filtered.dump of=trimmed.dump
for i in *; do
tail -c +5 $i > ../3/$i; done

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
cd ../3/
for i in *; do
# sed -i '1i <svg style="fill:white;"' $i; done
color=`shuf -n 1 ../../colors`
sed -i '1i <svg style="fill:'$color';"' $i; done


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


cd ../

ls 3 > ../1.list


favicon=`shuf -n 1 ../1.list`

cd ../../


# get random line from all_the_names and put it into variable favicon
# https://stackoverflow.com/questions/448005/whats-an-easy-way-to-read-random-line-from-a-file-in-unix-command-line
# favicon=`shuf -n 1 font-awesome-icons-list` && echo $name
# favicon=`shuf -n 1 font-awesome-icons-list`

# THE ICON ORIGINAL
# <!--amazing8543G345IrZ73Z22i--><link rel="shortcut icon" type="image/png" href="content/img/pixel16.png">

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--amazing8543G345IrZ73Z22i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i '/amazing8543G345IrZ73Z22i/c<!--amazing8543G345IrZ73Z22i--><link rel="icon" sizes="any" type="image/svg+xml" href="content/scripts/update_website/lib/icons/3/'$favicon'">' ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
echo changed website favicon to: $color $favicon





# change website name to random video game name
cd ../generate_name/
# sh 3_change_website_name.sh

# get random line from all_the_names and put it into variable name
# https://stackoverflow.com/questions/448005/whats-an-easy-way-to-read-random-line-from-a-file-in-unix-command-line
# name=`shuf -n 1 all_the_names` && echo $name
name=`shuf -n 1 all_the_names`

# THE TITLE ORIGINAL
# <!--amazing63z947ziT9Eas722i--><title>pixel</title>

# searches 3 folders up in the index.html text for line with amazing63z947ziT9Eas722i then replaces it with <!--amazing63z947ziT9Eas722i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$name</title>" ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
echo changed website name to: $name

# update the website preview
cd ../website_preview
sh preview.sh
echo website preview updated for the readme

# update the website update version
cd ../update_website/

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

value=`cat message.txt`

rm -f message.txt

cp "$PWD/lib/message.txt" message.txt

cd ../../../ && echo entered website folder &&

git add . && echo tracked and staged all files &&

git commit -m "$value" && echo commited localy with a message "$value" &&

git push origin master && echo pushed changes to the internet &&

# cd "$PWD/content/scripts/update_website/" && rm -f message.txt && cp "$PWD/lib/message.txt" message.txt && echo done everything

echo done everything

# for the end change every text in message.txt with just one word: update

echo changed website name to: $name

# prints in the terminal
echo changed website favicon to: $color $favicon

echo current update is $update
