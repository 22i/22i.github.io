#!/bin/bash

# https://gitlab.com/torkel104/libstrangle
# limit program, game fps
# usage:
# strangle 30 /path/to/game
echo libstrangle
sudo apt install gcc-multilib -y
sudo apt install g++-multilib -y
sudo apt install libx11-dev -y
sudo apt install mesa-common-dev -y
cd $PWD/temp/
# git clone https://gitlab.com/torkel104/libstrangle.git
git clone https://github.com/Glitch1441/libstrangle
cd $PWD/libstrangle/
make
sudo make install
cd ..
cd ..
rm -f -r $PWD/temp/*

echo done everything
