#!/bin/bash


while :
do


# have firefox open on left half of the screen

# press the blue generate button to generate a name
xdotool mousemove 400 684 click 1


# tripple press the name to select all the name text
sleep 0.5
xdotool mousemove 407 492 click 1
sleep 0.1
xdotool mousemove 407 492 click 1
sleep 0.1
xdotool mousemove 407 492 click 1
sleep 0.5

# copy the text
xdotool key ctrl+c

# press the text area to start inserting text
sleep 0.5
# xdotool mousemove 407 492 click 1

copy=`xsel`

echo $copy

# xsel >> names

# sed -i "1i $copy" names

touch $PWD/names/"$copy"

# paste the text
# xdotool key ctrl+v

# as a sign of done move the mouuse near blue alien
xdotool mousemove 517 150





echo done


done

