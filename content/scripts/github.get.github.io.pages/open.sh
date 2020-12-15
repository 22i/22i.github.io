#!/bin/bash


# while read line; do
#     google-chrome "$line"
# done < $PWD/links/* &&

# firefox is way faster at opening tabs than chrome

cd $PWD/links1 && echo entered links1 folder &&

while read line; do
    firefox --new-tab "$line"
done < `ls | sort -n | head -1` && echo done opening new tabs &&


# removes first file in directory links1
\rm `ls | sort -n | head -1` && echo done
