#!/bin/bash

# needed stops from reinstalling packages
# https://superuser.com/questions/568967/prevent-pacman-from-reinstalling-packages-that-were-already-installed

echo git
sudo pacman --noconfirm --needed -S git
sudo pacman --noconfirm --needed -S kwrite


echo done everything
