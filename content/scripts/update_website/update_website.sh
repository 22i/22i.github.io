#!/bin/bash

# video help https://www.youtube.com/watch?v=ruieT3Nkg2M

# https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell

# change website name to random video game name
cd ../generate_name/
sh 3_change_website_name.sh

# update the website update version
cd ../update_website/

# get line 95 into variable and keep only numbers
# goes up 3 folders
lineupdate=`grep update ../../../version.html|sed 's/[^0-9]*//g'`

# add 1 to the update number
update=$(echo 1+$lineupdate | bc)

# echo $lineupdate prints what the current update is in the terminal
echo current update is $update

# switch line 95 with this
sed -i "s/update.*/update $update/" ../../../version.html

# update website

value=`cat message.txt`

rm -f message.txt

cd ../../../ && echo entered website folder &&

git add . && echo tracked and staged all files &&

git commit -m "$value" && echo commited localy with a message "$value" &&

git push origin master && echo pushed changes to the internet &&

cd "$PWD/content/scripts/update_website/" && rm -f message.txt && cp "$PWD/lib/message.txt" message.txt && echo done everything

# for the end change every text in message.txt with just one word: update

echo current update is $update
