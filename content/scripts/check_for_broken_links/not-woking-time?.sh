#!/bin/bash

echo status
echo ...


# check how many lines not-woking has keep only numbers and put it into variable notwokinglines
notwokinglines=`wc -l ../grab_io_pages/not-woking | sed 's/[^0-9]*//g'`


# inifinte loop
while :
do

# check how many lines results1 has keep only numbers remove last number 1 (results1) and put it into variable results1lines
results1lines=`wc -l notresults1 | sed 's/[^0-9]*//g' | sed 's/.$//'`

echo $results1lines / $notwokinglines

sleep 1

clear

done


echo done everything
