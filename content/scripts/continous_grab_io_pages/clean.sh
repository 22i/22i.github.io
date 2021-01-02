#!/bin/bash

# does not seem to work as intended?????

# CHECKS IF NEW AND MASTERLIST LINKS ARE WORKING

cd ../check_for_broken_links

bash 7-continous_checker.sh

bash 8-clean-continous.sh
 
# adds working to masterlist
bash 6-clean-not-woking.sh

# empty the new

cd ../continous_grab_io_pages

cat /dev/null > new

# CHECKS IF NOT_WOKING IS STILL NOT WOKING

cd ../check_for_broken_links

bash 5-not-woking_checker.sh

bash 6-clean-not-woking.sh

cd ../grab_io_pages

bash 1.get.github.links.sh


echo done everything
