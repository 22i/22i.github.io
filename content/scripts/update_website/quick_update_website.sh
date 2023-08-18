#!/bin/bash

# THIS SCRIPT UPDATES THE WEBSITE VERSION, PREVIEW and THE WEBSITE ITSELF
# IT COMMITS WITH A MESSAGE THAT IS INSIDE message.txt

# usefull for latest update
today=`date "+%d.%m.%Y %H:%M"`

# echo $today



# will it work?
cd ../update_website/lib/icons/
mkdir 2
mkdir 3
cd ../../../generate_name/


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














# # # # # # # # # # # # # # # # # # 
# CHANGE WEBSITE LASTUPDATE
# # # # # # # # # # # # # # # # # # 

dateoftoday1=`date "+%d.%m.%Y"`

# search for line with lastupdatedateUUUUiiirdsjijdasdU in index.html from 3 folders up and replace it with <!--lastupdatedateUUUUiiirdsjijdasdU-->$updateplus</a> actualy $updateplus is variable that contains update number
sed -i "/lastupdatedateUUUUiiirdsjijdasdU/c<!--lastupdatedateUUUUiiirdsjijdasdU--><!--$dateoftoday1-->" ../../../index.html












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

# cleans up but leaves results0 results1 results2 alone
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
