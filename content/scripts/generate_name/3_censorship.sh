#!/bin/bash

# rm -f all_the_names1

# cp all_the_names all_the_names1

# remove some names that match from the remove text file in the lib folder
grep -Fvxf $PWD/lib/remove all_the_names > all_the_names1

# rm -f all_the_names1

echo done everything

