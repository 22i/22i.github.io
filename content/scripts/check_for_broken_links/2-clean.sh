#!/bin/bash

# are there any other numbers than 404 301

# sort uniq to get every posible number

# what does number 200 mean last time i checked it worked

# 404 there is no github.io
#     there is no github.io and unreachable



# searches for line that contains 404
grep -n 404 results1 | cut -f1 -d: > error

# find empty lines then remove 1 suffix from them
grep -E --line-number '^$' results1 | sed 's/.$//' >> error

# puts number of lines of error into error variable
# count how many lines then strip anything besides numbers put it into variable
error=`wc -l error | sed 's/[^0-9]*//g'`

# prints in terminal how many broken links it found if noon then you do not need to run 1-recreate html
echo we found $error broken links


# add a suffix p; put it into one line remove a sufix
awk 'NF{print $0 "p;"}' error | tr -d '\n' | sed 's/.$//' > error1

# insert text sed -n ' to beggining
# reads line number
# sed -n '3p;5p' masterlist.txt > 404
paste '-d\0' $PWD/lib/insert1 error1 > error2

# broken links into new-not-woking.txt
# insert add suffix > not-working add bin/bash to beggining
paste '-d\0' error2 $PWD/lib/insert2 | awk 'NF{print $0 " ../grab_io_pages/masterlist.txt > new-not-woking.txt"}' | sed '1i #!/bin/bash' > $PWD/lib/error3



# make it executable
chmod +x $PWD/lib/error3

# run it
sh $PWD/lib/error3


error_text=`cat new-not-woking.txt`


# add not working links to not-woking

# keeps in mind prevous not working found links
cp -f ../grab_io_pages/not-woking not-woking.txt

# not-woking + new-not-woking.txt = together joins all the text together in current folder
cat not-woking.txt new-not-woking.txt > together

# remove all duplicate lines
# sort together | uniq > masterlist.txt
sort together | uniq > ../grab_io_pages/not-woking



# 
# # # 
# # # # # 
# remove not working from masterlist

cp -f ../grab_io_pages/masterlist.txt masterlist-copy

# remove duplicates
sort masterlist-copy | uniq > masterlist-copy1

# remove not working links from masterlist
# use blacklist (working
grep -Fvxf together masterlist-copy1 > 1

cp -f 1 ../grab_io_pages/masterlist.txt



# rm -f error error1 error2 $PWD/lib/error3 results0 results1

rm -f error error1 error2 $PWD/lib/error3

rm -f together not-woking.txt new-not-woking.txt

rm -f new-not-woking.txt

echo done everything

# echo not working lines are $error_text

echo we found $error broken links >> timing

echo done everything
