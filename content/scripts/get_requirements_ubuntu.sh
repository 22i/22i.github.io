#!/bin/bash



echo git
sudo apt install -y git
echo make
sudo apt install -y make
echo plasma-sdk
sudo apt install -y plasma-sdk
echo python
sudo apt install -y python
echo python3
sudo apt install -y python3
echo python3-pip
sudo apt install -y python3-pip


echo mpv
sudo apt install -y mpv
echo thunderbird
sudo apt install -y thunderbird
# echo audacity
# sudo apt install -y audacity
echo tenacity
# https://tenacityaudio.org/

echo qbittorrent
sudo apt install -y qbittorrent
echo gimp
sudo apt install -y gimp
echo xournal
sudo apt install -y xournal
echo gparted
sudo apt install -y gparted
echo kcalc
sudo apt install -y kcalc

echo ffmpeg
sudo apt install -y ffmpeg
echo ffmpegthumbs
sudo apt install -y ffmpegthumbs
echo wkhtmltopdf
sudo apt install -y wkhtmltopdf
echo wkhtmltoimage
sudo apt install -y wkhtmltoimage
echo pdftk
sudo apt install -y pdftk
echo pdftoppm
sudo apt install -y pdftoppm
echo rsync
sudo apt install -y rsync
echo yad
sudo apt install -y yad
echo imagemagick
sudo apt install -y imagemagick

echo lm-sensors
sudo apt install -y lm-sensors
echo xosd-bin
sudo apt install -y xosd-bin
# to get icons from .exe files
echo icoutils
sudo apt install -y icoutils
echo notifications
sudo apt install -y libnotify-bin
sudo apt install -y libvorbis

# kvm Kernel-based Virtual Machine
# https://www.linuxtechi.com/how-to-install-kvm-on-ubuntu-22-04/
sudo apt install -y cpu-checker
sudo apt install -y qemu-kvm
sudo apt install -y virt-manager
sudo apt install -y libvirt-daemon-system
sudo apt install -y virtinst
sudo apt install -y libvirt-clients
sudo apt install -y bridge-utils



# echo youtube-dl
# sudo apt install -y youtube-dl
# sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl


# sudo apt install -y HandBrakeCLI
# sudo apt install -y mkvtoolnix


# control wifi speed
echo "trickle limits wifi speed"
sudo apt install -y trickle

# to get godot mono projects working
# https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-2204
echo "dotnet-sdk-8.0 aspnetcore-runtime-8.0 to get godot mono projects working"
sudo apt install -y dotnet-sdk-8.0
sudo apt install -y aspnetcore-runtime-8.0

echo "qtchooser helps kde to get qdbus shortcut for volume change"
sudo apt install -y qtchooser

# monitor directory tree file changes
# https://www.baeldung.com/linux/monitor-changes-directory-tree
sudo apt install -y inotify-tools

# helps with wagic audio
sudo apt install -y libqt5multimedia5-plugins



echo xdotool
sudo apt install -y xdotool

echo xclip
sudo apt install -y xclip

echo xsel
sudo apt install -y xsel

# for playing audio with play song.ogg
echo sox
sudo apt install -y sox
# to play mp3 files with sox
sudo apt install -y libsox-fmt-mp3

echo lynx
sudo apt install -y lynx

# wayland
echo "wl-clipboard for wayland clipboard manipulation"
sudo apt install -y wl-clipboard

# window managment that works on wayland a bit
echo "wmctrl put window in focus"
sudo apt install -y wmctrl

# kdotool window control wayland
# get most recent one from github releases
# https://github.com/jinliu/kdotool/releases
# https://github.com/jinliu/kdotool

# ydotool input control wayland
# get most recent one from github releases
# https://github.com/ReimuNotMoe/ydotool/releases
# https://github.com/ReimuNotMoe/ydotool

# Command to simulate input anywhere (X11, Wayland, TTYs)
# https://git.sr.ht/~geb/dotool

# Minetest Stable Releases
# sudo add-apt-repository ppa:minetestdevs/stable
# sudo apt update
# sudo apt install -y minetest


# Minetest Daily Builds
# sudo add-apt-repository ppa:minetestdevs/daily-builds
# sudo apt update
# sudo apt install -y minetest

echo done everything
