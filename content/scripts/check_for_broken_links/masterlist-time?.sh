#!/bin/bash

echo status
echo ...


# check how many lines masterlist.txt has keep only numbers and put it into variable masterlistlines
masterlistlines=`wc -l ../grab_io_pages/masterlist.txt | sed 's/[^0-9]*//g'`


# inifinte loop
while :
do


# check how many lines results1 has keep only numbers remove last number 1 (results1) and put it into variable results1lines
results1lines=`wc -l results1 | sed 's/[^0-9]*//g' | sed 's/.$//'`

echo $results1lines / $masterlistlines

sleep 1

clear

done


echo done everything
