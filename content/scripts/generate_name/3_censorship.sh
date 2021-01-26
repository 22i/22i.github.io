#!/bin/bash



rm -f 1 2 suffix prefix

rm -f suffix prefix

# check how many lines censor has keep only numbers and put it into variable liness
censor_lines=`wc -l censor | sed 's/[^0-9]*//g'`



# create multiple lines of sed -i '/ based on the number of lines

# linux do command x times
# https://serverfault.com/questions/273238/how-to-run-a-command-multiple-times-using-bash-shell
for i in `seq $censor_lines`; do cat $PWD/lib/prefix >> prefix; done
# sed -i '/
# sed -i '/
# sed -i '/

for i in `seq $censor_lines`; do cat $PWD/lib/suffix >> suffix; done
# /d' all_the_names
# /d' all_the_names
# /d' all_the_names

# paste prefix to censor

paste '-d\0' prefix censor > 1

# paste created to suffix

paste '-d\0' 1 suffix > 2

sed -i '1i #!/bin/bash' 2

sed -i '$a echo censored everything' 2

chmod +x 2

bash 2

rm -f 1 2 suffix prefix

rm -f suffix prefix

echo done censoring censoring

