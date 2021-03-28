#!/bin/bash

# add echo git to get_requirements add auto yes

echo git
sudo apt install git -y
echo xdotool
sudo apt install xdotool -y
echo mpv
sudo apt install mpv -y
echo wkhtmltopdf
sudo apt install wkhtmltopdf -y
echo wkhtmltoimage
sudo apt install wkhtmltoimage -y
echo rsync
sudo apt install rsync -y
echo yad
sudo apt install yad -y
echo ffmpegthumbs
sudo apt install ffmpegthumbs -y
echo xclip
sudo apt install xclip -y
echo thunderbird
sudo apt install thunderbird -y
echo lynx
sudo apt install lynx -y
echo audacity
sudo apt install audacity -y
echo qbittorrent
sudo apt install qbittorrent -y
echo ffmpeg
sudo apt install ffmpeg -y
echo pdftk
sudo apt install pdftk -y
echo pdftoppm
sudo apt install pdftoppm -y
echo imagemagick
sudo apt install imagemagick -y
echo xournal
sudo apt install xournal -y
echo gimp
sudo apt install gimp -y
echo gparted
sudo apt install gparted -y
echo lm-sensors
sudo apt install lm-sensors -y
echo xosd-bin
sudo apt install xosd-bin -y
echo python3
sudo apt install python3 -y
echo python
sudo apt install python -y
# to get icons from .exe files
echo icoutils
sudo apt install icoutils -y
echo youtube-dl
# sudo apt install youtube-dl -y
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
sudo apt install libvorbis -y
# sudo apt install HandBrakeCLI -y
# sudo apt install mkvtoolnix -y
echo plasma-sdk
sudo apt install plasma-sdk -y
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
git clone https://gitlab.com/torkel104/libstrangle.git
cd $PWD/libstrangle/
make
sudo make install
cd ..
cd ..
rm -f -r $PWD/temp/*

echo done everything
