#!/bin/bash

rm -f names1

# put all the filenames from names folder together into names
ls $PWD/names/ > names1

# empty names folder
rm --force --recursive "$PWD/names/"/*


# check if there are any names that already exist in names
# sort finalout.txt | uniq > finalout1.txt
uniq names1 >> all_the_names

rm -f names1


echo done everything

