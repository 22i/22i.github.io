#!/bin/bash

echo started the search for new github.io pages
echo ...

# inifinte loop
while :
do

echo searching for github.io links
echo ...

# get github.io page links
lynx -dump -listonly "https://github.com/search?o=desc&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=2&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=3&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=4&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=5&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=6&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=7&q=github.io&s=updated&type=Repositories" "https://github.com/search?o=desc&p=8&q=github.io&s=updated&type=Repositories" | grep github.io$ | grep -v "search/advanced" | cut -d '/' -f 5,6 > 1

# remove everything masterlist
# use blacklist (not-woking
grep -Fvxf ../grab_io_pages/masterlist.txt 1 > 2

# remove everything not-woking
grep -Fvxf ../grab_io_pages/not-woking 2 > 3





# removes these particular lines
sed -i '/--.github.io/d' 3
sed -i '/-.github.io/d' 3
sed -i '/username.github.io/d' 3
sed -i '/-USERNAME.github.io/d' 3
sed -i '/SERNAME.github.io/d' 3

# removes empty lines
sed -i '/^$/d' 3





# join new and 3 together
cat 3 new > 4

# count how many lines then strip anything besides numbers put it into variable
old_number=`wc -l new | sed 's/[^0-9]*//g'`

# remove duplicates
sort 4 | uniq > new

# count how many lines then strip anything besides numbers put it into variable
new_number=`wc -l new | sed 's/[^0-9]*//g'`

# removes $old_number from $new_number
number_of_new_links=$(echo $new_number-$old_number | bc)

# today=`date "+%d.%m.%Y %H:%M"`
today=`date "+%H:%M"`

# print in terminal
echo $today we found $number_of_new_links new github.io links. TOTAL $new_number
echo ...
echo taking minute break
echo ...

# wait 1 minute
sleep 60




done


echo done everything
