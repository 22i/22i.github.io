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

# removes all the names that include words listed here
sed -i '/emo/d' new_names
sed -i '/Emo/d' new_names
sed -i '/Teenage/d' new_names
sed -i '/teenage/d' new_names
sed -i '/angry/d' new_names
sed -i '/Angry/d' new_names
sed -i '/prison/d' new_names
sed -i '/Prison/d' new_names
sed -i '/Killer/d' new_names
sed -i '/killer/d' new_names
sed -i '/Kiler/d' new_names
sed -i '/kiler/d' new_names
sed -i '/boring/d' new_names
sed -i '/Boring/d' new_names
sed -i '/scam/d' all_the_names
sed -i '/scam/d' all_the_names

shuf new_names >> all_the_names


rm -f names1 new_names new_names1

# check for any duplicates
# sort all_the_names | uniq -c | sort -nr

echo done everything

