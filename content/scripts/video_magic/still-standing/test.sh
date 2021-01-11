#!/bin/bash

wget 'https://docs.google.com/uc?id=17pv_uV8kLZSfoAgo-EfEXL_MgRo4uTtr&export=download' -O 'simple plan-last one standing.mp3' && youtube-dl --newline -i -o '$PWD/%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=K34j3YQprgk' && wget https://github.com/22i/mykdenliveprojects/raw/master/guystanding.kdenlive && echo -e '\n\n\033[32meverything downloaded! run guystanding.kdenlive and start editing!'








echo done everything
