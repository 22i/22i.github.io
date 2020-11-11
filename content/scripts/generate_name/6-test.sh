#!/bin/bash


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

