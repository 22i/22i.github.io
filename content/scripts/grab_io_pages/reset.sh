#!/bin/bash


# a way to restore all links

# remove folder links1
rm -r $PWD/links1/ && echo removed folder links1

# cp links folder to links1
cp -R $PWD/links $PWD/links1 && echo done
