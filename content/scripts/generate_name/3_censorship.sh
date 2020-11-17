#!/bin/bash

# rm -f all_the_names1

# cp all_the_names all_the_names1

# remove some names that match from the remove text file in the lib folder
# grep -Fvxf $PWD/lib/remove all_the_names > all_the_names1

# removes all the names that include words listed here
sed -i '/emo/d' all_the_names
sed -i '/Emo/d' all_the_names
sed -i '/angry/d' all_the_names
sed -i '/Angry/d' all_the_names
sed -i '/prison/d' all_the_names
sed -i '/Prison/d' all_the_names

# rm -f all_the_names1

echo done everything

