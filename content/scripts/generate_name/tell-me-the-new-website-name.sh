#!/bin/bash





# # 
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
# echo $lineupdates

# add 1 to the value of variable lineupdates then put results inside updates variable
updates=$(echo 1+$lineupdates | bc)

# prints what the current line is with the value of variable updates in the terminal
# echo current line is $updates

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $updates -gt $liness ]; do
# reset to 1
lineupdates=1
# echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$updates $PWD/content/scripts/generate_name/all_the_names | tail +$updates`

# prints the value of variable read
echo $read



# echo $PWD

# DOES NOT SEEM TO WORK FOR SOME WEIRD REASON
# searches in the icontest.html text for line with grertsdfewrtasdfaerawefasdfaefasfd then replaces it with <!--grertsdfewrtasdfaerawefasdfaefasfd--><title>$read</title>
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i "/grertsdfewrtasdfaerawefasdfaefasfd/c<!--grertsdfewrtasdfaerawefasdfaefasfd--><title>$read</title>" icontest.html

# `
# \

# echo get new website icon

# cd ../update_website/lib/icons/

cd $PWD/content/scripts/update_website/lib/icons/

# check how many lines icons has keep only numbers and put it into variable liness
# iconliness=`wc -l $PWD/content/scripts/update_website/lib/icons/icons | sed 's/[^0-9]*//g'`
iconliness=`wc -l icons | sed 's/[^0-9]*//g'`

# print in terminal value of variable liness
# echo file icons has $iconliness lines

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

cd $PWD/content/scripts/update_website/lib/icons/

# read line number from variable updates from all_the_names text file into variable read
# iconread=`head -$iconupdates $PWD/content/scripts/update_website/lib/icons/icons | tail +$iconupdates`
iconread=`head -$iconupdates icons | tail +$iconupdates`

cd ../../.././../../
# root

# prints the value of variable read
echo new website icon: $iconread

# display -density 5 solid/$read

# echo $PWD

# searches 3 folders up in the index.html text for line with amazing8543G345IrZ73Z22i then replaces it with <!--rt234erswdf3423erter44--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i '/shortcut/c<link rel="shortcut icon" type="image/png" href="content/scripts/update_website/lib/icons/1/'$iconread'">' icontest.html



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


echo This will be the next websites name if you press enter


read -n 1 -r -s -p $'Press enter to continue...\n'


echo starting to update website ...


# read -p "Press enter to update the website"

cd $PWD/content/scripts/update_website/
echo $PWD
# cd ../update_website
bash update_website.sh



# echo done everything

