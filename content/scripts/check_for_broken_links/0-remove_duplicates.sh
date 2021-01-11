#!/bin/bash

cp -f ../grab_io_pages/masterlist.txt masterlist-copy

# remove duplicates
sort masterlist-copy | uniq > ../grab_io_pages/masterlist.txt

cp -f ../grab_io_pages/not-woking not-woking-copy

# remove duplicates
sort not-woking-copy | uniq > ../grab_io_pages/not-woking

rm -f masterlist-copy not-woking-copy

echo done everything
