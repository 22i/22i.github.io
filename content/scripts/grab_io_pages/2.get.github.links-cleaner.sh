#!/bin/bash

# WHOLE POINT OF THIS IS TO MAKE LESS FILE CHANGES SO THAT COMMIT LOOKS CLEANER
# USE THIS ONE MOST OF THE TIME WHEN RESTARTING USE THE NUMBER 1


# count how many lines then strip anything besides numbers put it into variable
iold_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# get github.io page links
lynx -dump -listonly "https://github.com/search?o=desc&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=2&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=3&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=4&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=5&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=6&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=7&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=8&q=github.io&s=updated&type=Repositories" | grep github.io$ | grep -v "search/advanced" | cut -d '/' -f 5,6 > github.io.txt

# joins all the text together in current folder
cat *.txt >> together

# echo joined all text together

# remove all duplicate lines
# sort together | uniq > masterlist.txt
sort together | uniq > new1

# use blacklist (masterlist.txst
grep -Fvxf masterlist.txt new1 > new

cp new1 masterlist.txt

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
awk '$0="https://"$0' new > 1

# put quoutes on every line
awk '{ print "\""$0"\""}' 1 > 2

# add a suffix ;
awk 'NF{print $0 ";"}' 2 > 3

# makes an array of starting from number depending on variable til (number depends on the variable) $number_of_links_in_masterlist also deletes the last line since it breaks things
seq -f "urls[%.0f]=" "$iold_number" "$inumber_of_links_in_masterlist" | sed '$ d' > aray

# echo done aray

# adds text from 3 to array
paste '-d\0' aray 3 > done

# searches for line that contains shdfoOusd8jfhef6hs2svksT7haosfj 3 folders up in index.html then puts it into variable new_line
new_line=`grep -n shdfoOusd8jfhef6hs2svksT7haosfj ../../../lucky.github.io.page.html | cut -f1 -d:`

# echo $new_line

# if you add 1 it skips one then inserts
# remove 2 from new_line variable
newer_line=$(echo $new_line-2 | bc)

# echo $newer_line

# adds a prefix
awk '$0="'$newer_line'"$0' $PWD/lib/insert > $PWD/lib/1

# add a prefix: sed -i "
awk '$0="sed -i \""$0' $PWD/lib/1 > $PWD/lib/2

# adds bin bash to it
sed '1i #!/bin/bash' $PWD/lib/2 > 2

# makes it executable
chmod +x 2

# run it
# writes contents of done into 5th line of redirect
sh 2

rm --force done aray 3 2 1 0 done aray new1 new $PWD/lib/1 $PWD/lib/2

rm --force github.io.txt

# count how many lines then strip anything besides numbers put it into variable
inew_number=`wc -l masterlist.txt | sed 's/[^0-9]*//g'`

# echo $new_number

# removes $old_number from $new_number
inumber_of_new_links=$(echo $inew_number-$iold_number | bc)

# echo $number_of_new_links

echo we found $inumber_of_new_links new github.io links

echo done everything
