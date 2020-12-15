#!/bin/bash

rm -f names1 new_names new_names1

# put all the filenames from names folder together into names
ls $PWD/names/ > names1

# empty names folder
rm --force --recursive "$PWD/names/"/*


# check if there are any names that already exist in names
sort names1 | uniq > new_names1
# uniq names1 > new_names

# blacklist remove any line that is already inside all_the_names
grep -Fvxf all_the_names new_names1 > new_names


rm -f names1




shuf new_names >> all_the_names

# removes all the names that include words listed here
sh 3_censorship.sh


rm -f names1 new_names new_names1

# check for any duplicates
# sort all_the_names | uniq -c | sort -nr

echo done everything

