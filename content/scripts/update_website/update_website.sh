#!/bin/bash

# THIS SCRIPT UPDATES THE WEBSITE VERSION, FAVICON, NAME, PREVIEW and THE WEBSITE ITSELF
# IT COMMITS WITH A MESSAGE THAT IS INSIDE message.txt

# usefull for latest update
today=`date "+%d.%m.%Y %H:%M"`

# echo $today





# # # # # # # # # # # # # # # # # # 
# CHANGE WEBSITE LASTUPDATE
# # # # # # # # # # # # # # # # # # 

dateoftoday1=`date "+%d.%m.%Y"`

# search for line with lastupdatedateUUUUiiirdsjijdasdU in index.html from 3 folders up and replace it with <!--lastupdatedateUUUUiiirdsjijdasdU-->$updateplus</a> actualy $updateplus is variable that contains update number
sed -i "/lastupdatedateUUUUiiirdsjijdasdU/c<!--lastupdatedateUUUUiiirdsjijdasdU--><!--$dateoftoday1-->" ../../../index.html





# # # # # # # # # # # 
# CHANGE WEBSITE NAME
# # # # # # # # # # # 



# change website name to random video game name
# content/scripts/update_website/
cd ../generate_name/
# content/scripts/generate_name/

# check how many lines all_the_names has keep only numbers and put it into variable liness
liness=`wc -l all_the_names | sed 's/[^0-9]*//g'`

# print in terminal value of variable liness
# echo $liness

echo $PWD

# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi ../../../index.html|sed 's/[^0-9]*//g'`
# echo $lineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
updates=$(echo 1+$lineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
# echo current line is $updates

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $updates -gt $liness ]; do
# search for line amazingTRHFfdhghukTADFSi and replace it with <!--amazingTRHFfdhghukTADFSi--><!--1-->
sed -i "/amazingTRHFfdhghukTADFSi/c<!--amazingTRHFfdhghukTADFSi--><!--1-->" ../../../index.html
# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi ../../../index.html|sed 's/[^0-9]*//g'`
# echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$updates all_the_names | tail +$updates`

# prints the value of variable read
# echo $read

# find line with amazingTRHFfdhghukTADFSi and change website name line number from all_the_names so that it chooses bigger name line number next time
sed -i "/amazingTRHFfdhghukTADFSi/c<!--amazingTRHFfdhghukTADFSi--><!--$updates-->" ../../../index.html

# find line with amazing63z947ziT9Eas722i and change the tittle
sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$read</title>" ../../../index.html


# prints in the terminal with variable read
# echo changed website name to: $read














# # # # # # # # # # # 
# ICON CHANGE
# # # # # # # # # # # 



cd ../update_website


# go inside lib folder then icons folder then solid folder
# content/scripts/update_website/
cd $PWD/lib/icons/solid
# content/scripts/update_website/lib/icons/solid

# remove everything inside from folder 2 that is ../ up a directory
rm --force --recursive ../2/*

# remove everything inside from folder 3 that is ../ up a directory
rm --force --recursive ../3/*

# will it work?
mkdir -p ../2/
mkdir -p ../3/

# ls | shuf > ../icons

# check how many lines all_the_names has keep only numbers and put it into variable liness
iconlines=`wc -l ../icons | sed 's/[^0-9]*//g'`
echo number of all the icons is $iconlines

echo $PWD

cd ../../../../../../
# root

# get line with code into variable and keep only numbers
# goes up 3 folders
iconlineupdates=`grep zzdsaoiwejiKJAOSDJXVNkldfskjdf index.html|sed 's/[^0-9]*//g'`
echo previous icon number was $iconlineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
iconupdates=$(echo 1+$iconlineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
echo current line is $iconupdates

echo checking if number exceds number of icons
echo $PWD

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $iconupdates -gt $iconlines ]; do
# search for line zzdsaoiwejiKJAOSDJXVNkldfskjdf and replace it with <!--zzdsaoiwejiKJAOSDJXVNkldfskjdf--><!--1-->
sed -i "/zzdsaoiwejiKJAOSDJXVNkldfskjdf/c<!--zzdsaoiwejiKJAOSDJXVNkldfskjdf--><!--1-->" index.html
# get line with code into variable and keep only numbers
# goes up 3 folders
iconlineupdates=`grep zzdsaoiwejiKJAOSDJXVNkldfskjdf index.html|sed 's/[^0-9]*//g'`
# echo $lineupdates
iconupdates=$iconlineupdates
done

cd $PWD/content/scripts/update_website/lib/icons/solid

# read line number from variable updates from all_the_names text file into variable read
iconread=`head -$iconupdates ../icons | tail +$iconupdates`

cd ../../../../../../
# root

# find line with hftrtsert345hdfghs563sfgdsfzg3 and change website name line number from all_the_names so that it chooses bigger name line number next time
sed -i "/zzdsaoiwejiKJAOSDJXVNkldfskjdf/c<!--zzdsaoiwejiKJAOSDJXVNkldfskjdf--><!--$iconupdates-->" index.html

# find line with hftrtsert345hdfghs563sfgdsfzg3 and change the tittle
# sed -i "/hftrtsert345hdfghs563sfgdsfzg3/c<!--hftrtsert345hdfghs563sfgdsfzg3--><title>$iconread</title>" index.html

cd $PWD/content/scripts/update_website/lib/icons/solid

echo $iconread

cp -f $iconread ../3/



# to make it faster copy 1 random file from solid into folder 3 that is up a directory
# https://unix.stackexchange.com/questions/217712/randomly-copy-certain-amount-of-certain-file-type-from-one-directory-into-anothe#217720
# shuf -zn1 -e *.svg | xargs -0 cp -t ../3/

# https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell
# puts list of files of up a folder in folder 3 into variable favicon
# favicon=`ls ../3`


# go up a directory and into folder 3
# content/scripts/update_website/lib/icons/solid
cd ../3/
# content/scripts/update_website/lib/icons/3

# remove 4 bytes from beggining or 4 characters or just <svg from up a folder inside folder 2 in icon.svg
tail -c +5 *.svg > ../2/icon.svg

# add svg color to begining of the file
# <svg
# go up a folder and into folder 2
# cd ../2/



# content/scripts/update_website/lib/icons/3
cd ../../
# content/scripts/update_website/lib/

# check how many lines icons has keep only numbers and put it into variable liness
# iconliness=`wc -l $PWD/content/scripts/update_website/lib/icons/icons | sed 's/[^0-9]*//g'`
colorlines=`wc -l colors-by-shade | sed 's/[^0-9]*//g'`

# content/scripts/update_website/lib/
cd ../../../../
# root

# get line with code into variable and keep only numbers
# goes up 3 folders
colorlineupdates=`grep iuteIrewJerwfsdJJJrewrUUAAHH index.html|sed 's/[^0-9]*//g'`
echo previous icon number was $colorlineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
colorupdates=$(echo 1+$colorlineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
echo current line is $colorupdates

echo checking if number exceds number of icons
echo $PWD

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $colorupdates -gt $colorlines ]; do
# search for line iuteIrewJerwfsdJJJrewrUUAAHH and replace it with <!--iuteIrewJerwfsdJJJrewrUUAAHH--><!--1-->
sed -i "/iuteIrewJerwfsdJJJrewrUUAAHH/c<!--iuteIrewJerwfsdJJJrewrUUAAHH--><!--1-->" index.html
# get line with code into variable and keep only numbers
# goes up 3 folders
colorlineupdates=`grep iuteIrewJerwfsdJJJrewrUUAAHH index.html|sed 's/[^0-9]*//g'`
# echo $lineupdates
colorupdates=$colorlineupdates
done



cd $PWD/content/scripts/update_website/lib/

# read line number from variable updates from all_the_names text file into variable read
colorread=`head -$colorupdates colors-by-shade | tail +$colorupdates`

cd ../../../../
# root

# find line with iuteIrewJerwfsdJJJrewrUUAAHH and change website name line number from all_the_names so that it chooses bigger name line number next time
sed -i "/iuteIrewJerwfsdJJJrewrUUAAHH/c<!--iuteIrewJerwfsdJJJrewrUUAAHH--><!--$colorupdates-->" index.html



# put a random line from colors text file that is 2 folders up into variable color
# color=`shuf -n 1 ../../colors`

color=$colorread

cd $PWD/content/scripts/update_website/lib/icons/2






# add text inside the svg with variable color
sed -i '1i <svg style="fill:'$color';"' icon.svg

# go up a folder 3 times
# content/scripts/update_website/lib/icons/3
cd ../../../
# content/scripts/update_website/

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--amazing85ghfzu6ud573Z22i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i '/amazing85ghfzu6ud573Z22i/c<!--amazing85ghfzu6ud573Z22i--><!--'$color' '$iconread'-->' ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
# echo changed website favicon to: $color $favicon

# removes everything inside folder 3 which is located in /lib/icons/
rm --force --recursive $PWD/lib/icons/3/*










# # # # # # # # # # # # # # 
# GRAB MORE GITHUB.IO PAGES
# # # # # # # # # # # # # # 

# cd ../grab_io_pages/

# print in terminal number of links inside masterlist.txt.txt
# count how many lines then strip anything besides numbers put it into variable then print it into terminal
# old_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# echo $old_number

# script number 2 gets less file changes during commit
# bash 2.get.github.links-cleaner.sh
# cd ../continous_grab_io_pages/
# bash clean.sh

# cd ../grab_io_pages/

# to remove unecesary huge updates on commit
# rm --force --recursive "$PWD/links/"/*
# rm --force --recursive "$PWD/links1/"/*

# print in terminal number of links inside masterlist.txt.txt
# count how many lines then strip anything besides numbers put it into variable then print it into terminal
# new_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# echo $new_number

# $new_number minus $old_number equals new found github.io pages
# number_of_new_links=$(echo $new_number-$old_number | bc)

# echo $number_of_new_links



















# # # # # # # # # # # # # # #
# CHANGE WEBSITE PREVIEW
# # # # # # # # # # # # # # #


# update the website preview
# content/scripts/generate_name/
cd ../website_preview
# content/scripts/website_preview/

# execute the preview.sh bash script
bash preview.sh

# print in the terminal
# echo website preview updated for the readme







# # # # # # # # # # # # # # # # # # 
# CHANGE WEBSITE UPDATE VERSION
# # # # # # # # # # # # # # # # # # 

# content/scripts/website_preview/
cd ../update_website/
# content/scripts/update_website/

# searches for line that contains ZSUaJLR0dpmm3 3 folders up in index.html then remove everything before 2th < > it does not difirentiete between > < then remove last 3 bytes or 3 characters then put it into update_line variable
update_line=`grep ZSUaJLR0dpmm3 ../../../index.html | cut -d '>' -f 2 | sed 's/...$//'`
# echo $update_line

# add 1 to the update number
updateplus=$(echo 1+$update_line | bc)

# echo $lineupdate prints what the current update is in the terminal
# echo current update is $updateplus

# search for line with ZSUaJLR0dpmm3 in index.html from 3 folders up and replace it with <!--ZSUaJLR0dpmm3-->$updateplus</a> actualy $updateplus is variable that contains update number
sed -i "/ZSUaJLR0dpmm3/c<!--ZSUaJLR0dpmm3-->$updateplus</a>" ../../../index.html








# # # # # # # # # # # # # # # 
# CHANGE LATEST UPDATE TIME
# # # # # # # # # # # # # # # 

# today=`date "+%d.%m.%Y %H:%M"`

# echo $today

# UPDATE THE WEBSITE UPDATE TIME
# search for line with last updated in index.html from 3 folders up and replace it with actualy today contains current time
sed -i "/TUTENKAMEN/c<!--TUTENKAMEN-->$today</p>" ../../../index.html






# # # # # # # # # # # # # # # 
# UPDATE NUMBER OF MASTERLIST.TXT
# # # # # # # # # # # # # # # 


# print in terminal number of links inside masterlist.txt.txt
# count how many lines then strip anything besides numbers put it into variable then print it into terminal
supermasterlinks=`wc -l ../grab_io_pages/masterlist.txt | sed 's/[^0-9]*//g'`

# UPDATE discovered github io links
# search for line with password in index.html from 3 folders up and replace it with
sed -i "/z7erisdfh283eiuoasdjfa35r29/c<!--z7erisdfh283eiuoasdjfa35r29-->$supermasterlinks working github.io" ../../../index.html
# sed -i "/z7erisdfh283eiuoasdjfa35r29/c<!--z7erisdfh283eiuoasdjfa35r29-->$old_number working github.io" ../../../index.html







# # # # # # # # #
# CLEAN UP TIME
# # # # # # # # #

# content/scripts/update_website/
cd ../grab_io_pages/
# content/scripts/grab_io_pages/

# cleans up but does not clean results0 results1 results2
bash 3.1.clean-folder.sh








# # # # # # # # # # #
# UPDATE THE WEBSITE
# # # # # # # # # # #

# update website
# video help https://www.youtube.com/watch?v=ruieT3Nkg2M

# content/scripts/grab_io_pages/
cd ../update_website/
# content/scripts/update_website/

# puts whats inside message.txt inside variable message
message=`cat message.txt`

rm -f message.txt

# for the end change every text in message.txt with just one word: update
cp "$PWD/lib/message.txt" message.txt

# create an empty message.txt
# touch message.txt


cd ../../../ && echo entered website folder &&

git add . && echo tracked and staged all files &&

git commit -m "$message" && echo commited localy with a message "$message" &&

git push origin master && echo pushed changes to the internet &&


# put amazing into your clipboard ready to paste
echo amazing | xclip -selection c



# # # # # # # # # # # #
# MESSAGE OF COMPLETION
# # # # # # # # # # # #

# print in the terminal
echo done everything

# echo we found $number_of_new_links new github.io links

echo changed website name to: $read

# prints in the terminal
echo changed website favicon to: $color $iconread

echo commited with message: "$message"

echo current update is $updateplus
