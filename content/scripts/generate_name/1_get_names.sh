#!/bin/bash

# infinite while loop it never stops doing what is inside it until script is canceled or stopped when the last action is done it restarts at first action
while :
do

# you might need to change the mouse positions for butons and text to work with your screen size

# https://videogamena.me/vgng.html

# have fullscreen firefox to stop the moving of generate button which moves when the name is to long

# press the blue generate button to generate a name
xdotool mousemove 797 690 click 1

# tripple press the name to select all the name text
sleep 0.5
xdotool mousemove 811 496 click 1
sleep 0.1
xdotool mousemove 811 496 click 1
sleep 0.1
xdotool mousemove 811 496 click 1
sleep 0.5

# copy the text
xdotool key ctrl+c

# press the text area to start inserting text
sleep 0.5
# xdotool mousemove 407 492 click 1

# put what is in your current clipboard into variable copy
copy=`xsel`

# prints current value of variable copy to the terminal
echo $copy

# xsel >> names

# sed -i "1i $copy" names

# makes an empty file inside of folder names with filename of variable copy
touch $PWD/names/"$copy"

# paste the text
# xdotool key ctrl+v

# as a sign of completion move the mouse near blue alien
xdotool mousemove 794 186

# prints done to the terminal
echo done

done

