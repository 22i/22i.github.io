#!/bin/bash





# # # # # # # # # # # 
# get new WEBSITE NAME
# # # # # # # # # # # 

bash 3_censorship.sh

clear


cd ../../../
# root


# echo get new website name


# check how many lines all_the_names has keep only numbers and put it into variable liness
liness=`wc -l $PWD/content/scripts/generate_name/all_the_names | sed 's/[^0-9]*//g'`

# print in terminal value of variable liness
# echo $liness

# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi index.html|sed 's/[^0-9]*//g'`
echo $lineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
updates=$(echo 1+$lineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
echo current line is $updates

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $updates -gt $liness ]; do
# reset to 1
lineupdates=1
echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$updates $PWD/content/scripts/generate_name/all_the_names | tail +$updates`

# prints the value of variable read
echo $read



# echo $PWD





# CHANGES THE TITLE IN ICONTEST
# searches in the icontest.html text for line with grertsdfewrtasdfaerawefasdfaefasfd then replaces it with <!--grertsdfewrtasdfaerawefasdfaefasfd--><title>$read</title>
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i "/grertsdfewrtasdfaerawefasdfaefasfd/c<!--grertsdfewrtasdfaerawefasdfaefasfd--><title>$read</title>" icontest.html
# sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$read</title>" index.html

# `
# \











# echo get new website icon

# cd ../update_website/lib/icons/




# root
cd $PWD/content/scripts/update_website/lib/icons/
# /content/scripts/update_website/lib/icons/


# check how many lines icons has keep only numbers and put it into variable liness
# iconliness=`wc -l $PWD/content/scripts/update_website/lib/icons/icons | sed 's/[^0-9]*//g'`
iconliness=`wc -l icons | sed 's/[^0-9]*//g'`

# print in terminal value of variable liness
# echo file icons has $iconliness lines

# /content/scripts/update_website/lib/icons/
cd ../../../../../
# root

# echo $PWD

# get line with code into variable and keep only numbers
# goes up 3 folders
iconlineupdates=`grep zzdsaoiwejiKJAOSDJXVNkldfskjdf index.html | sed 's/[^0-9]*//g'`

# echo previous website favicon number is $iconlineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
iconupdates=$(echo 1+$iconlineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
# echo current website favicon number is $iconupdates

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $iconupdates -gt $iconliness ]; do
# reset to 1
iconlineupdates=1
# echo icon favicon number has reset to $iconlineupdates
iconupdates=$iconlineupdates
done

# root
cd $PWD/content/scripts/update_website/lib/icons/
# /content/scripts/update_website/lib/icons/

# read line number from variable updates from all_the_names text file into variable read
# iconread=`head -$iconupdates $PWD/content/scripts/update_website/lib/icons/icons | tail +$iconupdates`
iconread=`head -$iconupdates icons | tail +$iconupdates`

# /content/scripts/update_website/lib/icons/
cd ../../.././../../
# root

# prints the value of variable read
echo new website icon: $iconread

# display -density 5 solid/$read

# echo $PWD

# REPLACES THE ICON IN ICONTEST
# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--rt234erswdf3423erter44--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
# sed -i '/shortcut/c<link rel="shortcut icon" type="image/png" href="content/scripts/update_website/lib/icons/2/'$iconread'">' icontest.html








# root
cd $PWD/content/scripts/update_website/lib/icons/solid
# /content/scripts/update_website/lib/icons/solid

cp -f $iconread ../3/

cp -f $iconread ../iconicon.svg

# go up a directory and into folder 3
# content/scripts/update_website/lib/icons/solid
cd ../3/
# content/scripts/update_website/lib/icons/3

# remove 4 bytes from beggining or 4 characters or just <svg from up a folder inside folder 2 in icon.svg
tail -c +5 *.svg > ../2/icon.svg













# content/scripts/update_website/lib/icons/3
cd ../../
# content/scripts/update_website/lib/

# cd $PWD/content/scripts/update_website/lib/

# check how many lines icons has keep only numbers and put it into variable liness
# iconliness=`wc -l $PWD/content/scripts/update_website/lib/icons/icons | sed 's/[^0-9]*//g'`
colorlines=`wc -l colors-by-shade | sed 's/[^0-9]*//g'`

# content/scripts/update_website/lib/
cd ../../../../
# root

# get line with code into variable and keep only numbers
# goes up 3 folders
colorlineupdates=`grep iuteIrewJerwfsdJJJrewrUUAAHH index.html|sed 's/[^0-9]*//g'`
# echo previous icon number was $colorlineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
colorupdates=$(echo 1+$colorlineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
# echo current line is $colorupdates

# echo checking if number exceds number of icons
# echo $PWD

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

# root
cd $PWD/content/scripts/update_website/lib/
# /content/scripts/update_website/lib/

# read line number from variable updates from all_the_names text file into variable read
colorread=`head -$colorupdates colors-by-shade | tail +$colorupdates`

# /content/scripts/update_website/lib/
cd ../../../../
# root

color=$colorread

# root
cd $PWD/content/scripts/update_website/lib/icons/2
# /content/scripts/update_website/lib/icons/2

# add text inside the svg with variable color
sed -i '1i <svg style="fill:'$color';"' icon.svg

# /content/scripts/update_website/lib/icons/2
cd ..
# /content/scripts/update_website/lib/icons/

# remove 4 bytes from beggining or 4 characters or just <svg  in terminal.svg
tail -c +5 iconicon.svg > iconicon1.svg

# add text inside the svg with variable color
sed -i '1i <svg style="fill:'$color';"' iconicon1.svg


# remove 4 bytes from beggining or 4 characters or just <svg  in terminal.svg
tail -c +5 $PWD/solid/terminal.svg > terminal.svg

# add text inside the svg with variable color
sed -i '1i <svg style="fill:'$color';"' terminal.svg




# /content/scripts/update_website/lib/icons/
cd ../../../../../
# root




# cd ../../../../../

# echo $PWD

# it launches but shows errors
# firefox --new-tab --url icontest.html


# cd ../../


# read -p "do you like the name? Yes will update the website <y/N> " prompt
# if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
# then
#   cd ../update_website
#   sh update_website.sh
# else
#   exit 0
# fi







job=0

# get line with code into variable and keep only numbers
# goes up 3 folders
linedateoflastupdate=`grep lastupdatedateUUUUiiirdsjijdasdU index.html|sed 's/[^0-9]*//g'`
# echo $linedateoflastupdate


dateoftoday=`date "+%d.%m.%Y"|sed 's/[^0-9]*//g'`

# if date is same as today then do quickupdate
# while [ $dateoftoday == linedateoflastupdate ]; do
#     echo starting quick update
#     cd $PWD/content/scripts/update_website/
#     bash quick_update_website.sh
# done

# if date is same as today then do quickupdate
if [[ $dateoftoday -eq linedateoflastupdate ]]; then
    echo Quick update - if you press enter
    read -n 1 -r -s -p $'Press enter to continue...\n'
    echo starting quick update
    job=1
    cd $PWD/content/scripts/update_website/
    bash quick_update_website.sh
fi

# if job is still 0 or last update was yesterday then do full update
if [[ $job -eq 0 ]]; then
#     echo starting full update
    echo This will be the next websites name if you press enter
    read -n 1 -r -s -p $'Press enter to continue...\n'
    echo starting to update website ...
    cd $PWD/content/scripts/update_website/
    echo $PWD
    # cd ../update_website
    bash update_website.sh
fi


# echo done everything
