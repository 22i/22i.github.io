#!/bin/bash


# are there any other numbers than 404 301

# sort uniq to get every posible number

# what does number 200 mean last time i checked it worked



# PUTS WOKING AGAIN LINES INTO WORKING-AGAIN

# searches for line that contains 301
grep -n 301 results1 | cut -f1 -d: > working-again-lines

# searches for line that contains 200
grep -n 200 results1 | cut -f1 -d: >> working-again-lines





# puts number of lines of error into error variable
# count how many lines then strip anything besides numbers put it into variable
working_again=`wc -l working-again-lines | sed 's/[^0-9]*//g'`

# prints in terminal how many broken links it found if noon then you do not need to run 1-recreate html
echo we found $working_again broken links that are working now




# add a suffix p; put it into one line remove a sufix
awk 'NF{print $0 "p;"}' working-again-lines | tr -d '\n' | sed 's/.$//' > show-working-again1

# insert text
paste '-d\0' $PWD/lib/insert1 show-working-again1 > show-working-again2

# insert add suffix > not-working add bin/bash to beggining
paste '-d\0' show-working-again2 $PWD/lib/insert2 | awk 'NF{print $0 " ../grab_io_pages/not-woking > working-again"}' | sed '1i #!/bin/bash' > $PWD/lib/error3




# make it executable
chmod +x $PWD/lib/error3

# run it
sh $PWD/lib/error3





working_again_texts=`cat working-again`





# add newly working to masterlist

cp -f ../grab_io_pages/masterlist.txt masterlist-copy

# join masterlist and newly working links
cat masterlist-copy working-again > 1

# remove duplicates
sort 1 | uniq > ../grab_io_pages/masterlist.txt




# 
# # # 
# # # # # 
# remove newly working from not-woking

cp -f ../grab_io_pages/not-woking not-woking-copy

# remove duplicates
sort not-woking-copy | uniq > not-woking-copy1

# remove working links from not-woking
# use blacklist (working
grep -Fvxf working-again not-woking-copy1 > 1

cp -f 1 ../grab_io_pages/not-woking




# rm -f error error1 error2 $PWD/lib/error3 results0 results1

# rm -f $PWD/lib/error3

# rm -f results0 results1

# reads line number
# sed -n '3p;5p' masterlist.txt > 404



echo done everything


echo these are working again $working_again_texts

echo done everything
