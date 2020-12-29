#!/bin/bash


# are there any other numbers than 404 301

# sort uniq to get every posible number

# what does number 200 mean last time i checked it worked


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

# insert text
paste '-d\0' $PWD/lib/insert1 error1 > error2

# insert add suffix > not-working add bin/bash to beggining
paste '-d\0' error2 $PWD/lib/insert2 | awk 'NF{print $0 " ../grab_io_pages/new3 >> ../grab_io_pages/not-woking"}' | sed '1i #!/bin/bash' > $PWD/lib/error3

# make it executable
chmod +x $PWD/lib/error3

# run it
bash $PWD/lib/error3






# rm -f error error1 error2 $PWD/lib/error3 results0 results1

rm -f error error1 error2 $PWD/lib/error3

rm -f results0 results1

# reads line number
# sed -n '3p;5p' masterlist.txt > 404



echo done everything
