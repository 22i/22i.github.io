#!/bin/bash



echo git
sudo apt install git -y
echo xdotool
sudo apt install xdotool -y
echo make
sudo apt install make -y
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
echo xsel
sudo apt install xsel -y
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
echo notifications
sudo apt install libnotify-bin -y
# for playing audio with play song.ogg
echo sox
sudo apt install sox -y
# to play mp3 files with sox
sudo apt install libsox-fmt-mp3 -y
# echo youtube-dl
# sudo apt install youtube-dl -y
# sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
sudo apt install libvorbis -y
# sudo apt install HandBrakeCLI -y
# sudo apt install mkvtoolnix -y
echo plasma-sdk
sudo apt install plasma-sdk -y
echo python3-pip
sudo apt install python3-pip -y

# control wifi speed
echo "trickle limits wifi speed"
sudo apt install trickle -y

# to get godot mono projects working
# https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-2204
echo "dotnet-sdk-8.0 aspnetcore-runtime-8.0 to get godot mono projects working"
sudo apt-get install -y dotnet-sdk-8.0
sudo apt-get install -y aspnetcore-runtime-8.0

echo "qtchooser helps kde to get qdbus shortcut for volume change"
sudo apt install qtchooser -y

# wayland
echo "wl-clipboard for wayland clipboard manipulation"
sudo apt install wl-clipboard -y

# window managment
echo "wmctrl put window in focus"
sudo apt install wmctrl -y

echo done everything
