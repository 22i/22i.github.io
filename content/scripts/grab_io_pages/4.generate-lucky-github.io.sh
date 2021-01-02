#!/bin/bash


# THIS ONE MAKES LOTS OF FILE CHANGES DURING COMIT
# because it recreates and reorders lucky.github.io.page.html





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

rm --force together1 new2 new3 new55



echo done everything
