#!/bin/bash

# wget 'https://docs.google.com/uc?id=16WHflYoCkQZRIoeS4pIfGbwpJrjiTI5i&export=download' -O 'David Guetta - Dangerous (Lyric Video) ft Sam Martin.mp3' && wget https://github.com/22i/mykdenliveprojects/raw/master/danger.kdenlive && youtube-dl --newline -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=O0NBTjhjshc' && youtube-dl --newline -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=ylvMT4VcZM0' && youtube-dl --newline -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=Z6W8R8V3SLI' && youtube-dl --newline -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=qBH3tEEp_oo' && youtube-dl --newline -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=jjH2DRDSrYU' && echo -e '\n\n\033[32meverything downloaded! run danger.kdenlive and start editing!'

wget 'https://docs.google.com/uc?id=1-i4HslALOgo2PfB6cpxLf0ehNZ416MSQ&export=download' -O 'I MADE A SILLY MISTAKE.mp4' &&

wget 'https://docs.google.com/uc?id=1TVDE68W4A-YK3qTpAVkTcWlDxlVAjk3F&export=download' -O 'SOMEBODY PHONED THE POLICE!!.mp4' &&

wget 'https://docs.google.com/uc?id=16WHflYoCkQZRIoeS4pIfGbwpJrjiTI5i&export=download' -O 'David Guetta - Dangerous (Lyric Video) ft Sam Martin.mp3' &&
# dont look down documentary 40m OK
wget https://github.com/22i/mykdenliveprojects/raw/master/danger.kdenlive &&
# video unavailable
# youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=O0NBTjhjshc' &&
# # video unavailable
# youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=ylvMT4VcZM0' &&
# # video unavailable
# youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=Z6W8R8V3SLI' &&
# # DRAMATIC SUSPENSE SOUND EFFECTS
# youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=qBH3tEEp_oo' && 
# # AMV - Big Contest 2015 Promo - Bestamvsofalltime Anime MV ♫
# youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native 'https://www.youtube.com/watch?v=jjH2DRDSrYU' && 


youtube-dl --newline --ignore-errors -i -o '%(title)s.%(ext)s' --ignore-config --hls-prefer-native https://www.youtube.com/watch?v=O0NBTjhjshc https://www.youtube.com/watch?v=ylvMT4VcZM0 https://www.youtube.com/watch?v=Z6W8R8V3SLI https://www.youtube.com/watch?v=qBH3tEEp_oo https://www.youtube.com/watch?v=jjH2DRDSrYU &&



echo -e '\n\n\033[32meverything downloaded! run danger.kdenlive and start editing!'







echo done everything
