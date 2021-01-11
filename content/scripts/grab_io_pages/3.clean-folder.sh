#!/bin/bash


rm --force --recursive "$PWD/links/"/*
rm --force --recursive "$PWD/links1/"/*
rm --force new new55 done aray 3 2 1 together new3 new2 new1 github.io.txt not-woking-copy



# removes these particular lines
sed -i '/--.github.io/d' masterlist.txt
sed -i '/-.github.io/d' masterlist.txt
sed -i '/username.github.io/d' masterlist.txt
sed -i '/-USERNAME.github.io/d' masterlist.txt
sed -i '/SERNAME.github.io/d' masterlist.txt

# The following sed command removes all the lines that start with character R.
# sed '/^R/d' sed-demo-1.txt
sed -i '/^-/d' masterlist.txt
sed -i '/^-/d' not-woking
sed -i '/^--/d' masterlist.txt
sed -i '/^--/d' not-woking

# The following sed command removes all the lines that end with character m.
sed -i '/d$/d' masterlist.txt
sed -i '/d$/d' not-woking

# # any link that starts with -
# sed -i '-1128.github.io/d' masterlist.txt
# sed -i '-2020.github.io/d' masterlist.txt
# sed -i '-amritkundra786.github.io/d' masterlist.txt
# sed -i '-China-Z-2.github.io/d' masterlist.txt
# sed -i '-Chubbychie.github.io/d' masterlist.txt
# 
# # requires password or enter
# sed -i 'ningforever.github.io/d' masterlist.txt
# sed -i 'ananuda.github.io/d' masterlist.txt





sed -i '/--.github.io/d' not-woking
sed -i '/-.github.io/d' not-woking
sed -i '/username.github.io/d' not-woking
sed -i '/-USERNAME.github.io/d' not-woking
sed -i '/SERNAME.github.io/d' not-woking


# # any link that starts with -
# sed -i '-1128.github.io/d' not-woking
# sed -i '-2020.github.io/d' not-woking
# sed -i '-amritkundra786.github.io/d' not-woking
# sed -i '-China-Z-2.github.io/d' not-woking
# sed -i '-Chubbychie.github.io/d' not-woking
# 
# # requires password or enter
# sed -i 'ningforever.github.io/d' not-woking
# sed -i 'ananuda.github.io/d' not-woking



# removes empty lines
sed -i '/^$/d' masterlist.txt
sed -i '/^$/d' not-woking

cd ../check_for_broken_links

rm --force working-again show-working-again2 notworking-copy1 not-working-copy masterlist-copy 1 working-again-lines show-working-again1 masterlist-copy1 results0 results1 results2 not-woking-copy not-woking-copy1 not-woking-copy masterlist-copy


cd ../continous_grab_io_pages

rm --force 1 2 3 4




cd ../grab_io_pages



echo done everything
