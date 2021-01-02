#!/bin/bash


rm --force --recursive "$PWD/links/"/*
rm --force --recursive "$PWD/links1/"/*
rm --force new new55 done aray 3 2 1 together new3 new2 new1 github.io.txt

# removes these particular lines
sed -i '/--.github.io/d' masterlist.txt
sed -i '/-.github.io/d' masterlist.txt
sed -i '/username.github.io/d' masterlist.txt
sed -i '/-USERNAME.github.io/d' masterlist.txt
sed -i '/SERNAME.github.io/d' masterlist.txt

sed -i '/--.github.io/d' not-woking
sed -i '/-.github.io/d' not-woking
sed -i '/username.github.io/d' not-woking
sed -i '/-USERNAME.github.io/d' not-woking
sed -i '/SERNAME.github.io/d' not-woking

# removes empty lines
sed -i '/^$/d' masterlist.txt
sed -i '/^$/d' not-woking

cd ../check_for_broken_links

rm --force working-again show-working-again2 notworking-copy1 not-working-copy masterlist-copy 1 working-again-lines show-working-again1 masterlist-copy1 results0 results1 results2 not-woking-copy not-woking-copy1


cd ../continous_grab_io_pages

rm --force 1 2 3 4




cd ../grab_io_pages



echo done everything
