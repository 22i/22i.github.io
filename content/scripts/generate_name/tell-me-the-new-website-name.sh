#!/bin/bash





# # 
# get new WEBSITE NAME
# # # # # # # # # # # 




# check how many lines all_the_names has keep only numbers and put it into variable liness
liness=`wc -l all_the_names | sed 's/[^0-9]*//g'`

# print in terminal value of variable liness
# echo $liness

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
# reset to 1
lineupdates=1
# echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$updates all_the_names | tail +$updates`

# prints the value of variable read
echo $read





# read -p "do you like the name? Yes will update the website <y/N> " prompt
# if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
# then
#   cd ../update_website
#   sh update_website.sh
# else
#   exit 0
# fi


read -p "Press enter to update the website"

cd ../update_website
sh update_website.sh



# echo done everything

