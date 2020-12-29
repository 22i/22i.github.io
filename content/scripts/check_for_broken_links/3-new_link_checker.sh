#!/bin/bash



# it takes about 3m or 213s to check 2516 links

# -username-.github.io delete this from masterlist.txt since it asks for password and you need to press enter to continue searching for broken links



# how long did it took
T="$(date +%s)"


rm -f results0 results1 results2

OUTPUT0=results0
OUTPUT1=results1
OUTPUT2=results2

while read line
do
  out=$(
     curl -A "Mozilla/5.0" -I \
        $line | head -n 1 | cut -d$' ' -f2
  )
  echo $out >> $OUTPUT1
#   echo "$line" $out >> $OUTPUT2
  echo "$line" >> $OUTPUT0
done < "../grab_io_pages/new3"


echo done everything

# how long did it took
T="$(($(date +%s)-T))"
echo "It took ${T} seconds!"

minutes=$(echo ${T}/60 | bc)

echo it took $minutes minutes

notify-send "checker done" -t 3000
