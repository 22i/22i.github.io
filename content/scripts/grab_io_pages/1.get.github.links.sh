#!/bin/bash


# THIS ONE MAKES LOTS OF FILE CHANGES DURING COMIT
# because it recreates and reorders lucky.github.io.page.html




# count how many lines then strip anything besides numbers put it into variable iold_number
iold_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# get the github.io links from github
lynx -dump -listonly "https://github.com/search?o=desc&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=2&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=3&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=4&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=5&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=6&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=7&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=8&q=github.io&s=updated&type=Repositories" | grep github.io$ | grep -v "search/advanced" | cut -d '/' -f 5,6 > github.io.txt

# joins all the text together in current folder
cat *.txt >> together

# echo joined all text together

# remove all duplicate lines
sort together | uniq > masterlist.txt

# echo removed duplicate lines

rm --force --recursive github.io.txt together
rm --force --recursive "$PWD/links/"/*
rm --force --recursive "$PWD/links1/"/*

# lynx -dump -listonly
# "https://github.com/search?o=desc&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=2&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=3&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=4&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=5&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=6&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=7&q=github.io&s=updated&type=Repositories"
# "https://github.com/search?o=desc&p=8&q=github.io&s=updated&type=Repositories" | grep github.io$ | grep -v "search/advanced" | cut -d '/' -f 5,6 > github.io.txt

# split text into multiple text files 10 lines each
split -l 10 masterlist.txt

# echo done spliting

# move all txt files with x in their name to links folder
mv x* $PWD/links/

# echo done moving

# https://askubuntu.com/questions/86822/how-can-i-copy-the-contents-of-a-folder-to-another-folder-in-a-different-directo
# cp links to links1
cp -a $PWD/links/. $PWD/links1/

# count how many lines then strip anything besides numbers put it into variable
inumber_of_links_in_masterlist=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# in terminal print how many links are in masterlist.txt currently
echo masterlist.txt contains $inumber_of_links_in_masterlist links

# get duplicates are there any duplicates?
# sort masterlist.txt | uniq -c
# sort masterlist.txt | uniq -cd | sort -nr


# RANDOM GITHUB.IO WEBSITE

# this is unecesary since the website does the randomizing
# and creates a whole lot of unecesary file changes
# randomize the file randomizes each line
# shuf masterlist.txt > 0

# echo randomized

# put prefix https://
awk '$0="https://"$0' masterlist.txt > 1

# put quoutes on every line
awk '{ print "\""$0"\""}' 1 > 2

# add a suffix ;
awk 'NF{print $0 ";"}' 2 > 3

# makes an array of starting from number 0 til (number depends on the variable) $inumber_of_links_in_masterlist
seq -f "urls[%.0f]=" 0 $inumber_of_links_in_masterlist | sed '$ d' > aray

# echo done aray

# adds text from 3 to array
paste '-d\0' aray 3 > done

# writes contents of done into 5th line of redirect
sed '5r done' $PWD/lib/redirect.html > ../../../lucky.github.io.page.html

rm --force done aray 3 2 1 0 done aray new1 new

rm --force github.io.txt

# count how many lines then strip anything besides numbers put it into variable then print it into terminal
inew_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# echo $new_number

# removes $old_number from $new_number
inumber_of_new_links=$(echo $inew_number-$iold_number | bc)

# echo $number_of_new_links

echo we found $inumber_of_new_links new github.io links

echo done everything
