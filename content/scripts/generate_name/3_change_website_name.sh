#!/bin/bash

# change website name to random video game name

# get random line from all_the_names and put it into variable name
# https://stackoverflow.com/questions/448005/whats-an-easy-way-to-read-random-line-from-a-file-in-unix-command-line
# name=`shuf -n 1 all_the_names` && echo $name
name=`shuf -n 1 all_the_names`

# THE TITLE ORIGINAL
# <!--amazing63z947ziT9Eas722i--><title>pixel</title>

# searches 3 folders up in the index.html text for line with amazing63z947ziT9Eas722i then replaces it with <!--amazing63z947ziT9Eas722i--><title>$name</title>"
# https://www.golinuxhub.com/2017/06/sed-replace-whole-line-when-match-found/
sed -i "/amazing63z947ziT9Eas722i/c<!--amazing63z947ziT9Eas722i--><title>$name</title>" ../../../index.html

# prints in the terminal
# echo website name in index.html at line 10 changed to $name
echo changed website name to: $name

# echo done everything

