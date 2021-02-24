#!/bin/bash



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


# prints what the current line is with the value of variable updates in the terminal
# echo current line is $updates

# if number is bigger then the number of lines reset
# if value of variable updates is greater than variable value of liness then do this in every other case skip
while [ $lineupdates -gt $liness ]; do
# search for line amazingTRHFfdhghukTADFSi and replace it with <!--amazingTRHFfdhghukTADFSi--><!--1-->
sed -i "/amazingTRHFfdhghukTADFSi/c<!--amazingTRHFfdhghukTADFSi--><!--1-->" ../../../index.html
# get line with code into variable and keep only numbers
# goes up 3 folders
lineupdates=`grep amazingTRHFfdhghukTADFSi ../../../index.html|sed 's/[^0-9]*//g'`
# echo $lineupdates
updates=$lineupdates
done

# read line number from variable updates from all_the_names text file into variable read
read=`head -$lineupdates all_the_names | tail +$lineupdates`

# prints the value of variable read
# echo $read


# find line with amazing63z947ziT9Eas722i and change the tittle
sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$read</title>" ../../../index.html


# prints in the terminal with variable read
# echo changed website name to: $read


echo done everything
