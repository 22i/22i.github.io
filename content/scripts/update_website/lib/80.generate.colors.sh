#!/bin/bash

# count how many lines then strip anything besides numbers put it into variable iold_number
number_of_links_in_colors_by_shade=`wc -l colors-by-shade | sed 's/[^0-9]*//g'` && echo $number_of_links_in_colors_by_shade

# add a suffix ;
awk 'NF{print $0 ";"}' colors-by-shade > 1

# put quoutes on every line
awk '{ print "\""$0"\""}' 1 > 2

# removes prefix from beggining of every line then adds suffix >
sed 's/^.//' 2 | awk 'NF{print $0 ">"}' > 3
#FFFFFF;">

paste '-d\0' 3 colors-by-shade > 2
#FFFFFF;">#FFFFFF

# adds suffix </span><br>
awk 'NF{print $0 "</span><br>"}' 2 > 3
#FFFFFF;">#FFFFFF</span><br>

rm -f aray

# linux do command x times
# https://serverfault.com/questions/273238/how-to-run-a-command-multiple-times-using-bash-shell
for i in `seq $number_of_links_in_colors_by_shade`; do cat $PWD/lib/prefix >> aray; done
# <span style="color:
# <span style="color:
# <span style="color:

# echo done aray

# adds text from 3 to array
paste '-d\0' aray 3 > done

# writes contents of done into 5th line of color-test
sed '20r done' $PWD/lib/redirect.html > ../../../../color-test.html

rm --force done aray 3 2 1 0 done aray new1 new

# rm --force together1 new2 new3 new55

echo done everything
