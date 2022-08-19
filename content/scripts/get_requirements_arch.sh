#!/bin/bash



echo git
sudo pacman --noconfirm --needed -S git
echo kwrite
sudo pacman --noconfirm --needed -S kwrite
echo xdotool
sudo pacman --noconfirm --needed -S xdotool
echo make
sudo pacman --noconfirm --needed -S make
echo mpv
sudo pacman --noconfirm --needed -S mpv
echo wkhtmltopdf
sudo pacman --noconfirm --needed -S wkhtmltopdf
echo wkhtmltoimage
sudo pacman --noconfirm --needed -S wkhtmltoimage
echo rsync
sudo pacman --noconfirm --needed -S rsync
echo yad
sudo pacman --noconfirm --needed -S yad
echo ffmpegthumbs
sudo pacman --noconfirm --needed -S ffmpegthumbs
echo xclip
sudo pacman --noconfirm --needed -S xclip
echo xsel
sudo pacman --noconfirm --needed -S xsel
echo thunderbird
sudo pacman --noconfirm --needed -S thunderbird
echo lynx
sudo pacman --noconfirm --needed -S lynx
echo audacity
sudo pacman --noconfirm --needed -S audacity
echo qbittorrent
sudo pacman --noconfirm --needed -S qbittorrent
echo ffmpeg
sudo pacman --noconfirm --needed -S ffmpeg
echo pdftk
sudo pacman --noconfirm --needed -S pdftk
echo pdftoppm
sudo pacman --noconfirm --needed -S pdftoppm
echo imagemagick
sudo pacman --noconfirm --needed -S imagemagick
echo xournal
sudo pacman --noconfirm --needed -S xournal
echo gimp
sudo pacman --noconfirm --needed -S gimp
echo gparted
sudo pacman --noconfirm --needed -S gparted
echo lm-sensors
sudo pacman --noconfirm --needed -S lm-sensors
echo xosd-bin
sudo pacman --noconfirm --needed -S xosd-bin
echo python3
sudo pacman --noconfirm --needed -S python3
echo python
sudo pacman --noconfirm --needed -S python
# to get icons from .exe files
echo icoutils
sudo pacman --noconfirm --needed -S icoutils
echo notifications
sudo pacman --noconfirm --needed -S libnotify-bin
# for playing audio with play song.ogg
echo sox
sudo pacman --noconfirm --needed -S sox
# to play mp3 files with sox
sudo pacman --noconfirm --needed -S libsox-fmt-mp3
echo youtube-dl
# sudo pacman --noconfirm --needed -S youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl
sudo pacman --noconfirm --needed -S libvorbis
# sudo pacman --noconfirm --needed -S HandBrakeCLI
# sudo pacman --noconfirm --needed -S mkvtoolnix
echo plasma-sdk
sudo pacman --noconfirm --needed -S plasma-sdk


echo done everything
