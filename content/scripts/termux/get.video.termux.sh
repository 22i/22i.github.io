#!/bin/bash

# go into phone storage Download folder
cd /storage/emulated/0/Download/

# download youtube video with subtitles
yt-dlp --write-subs https://www.youtube.com/watch?v=H8uFV2Useho

# download youtube video at defined rate to not slow down the swarm
# yt-dlp --write-subs --limit-rate 200K https://www.youtube.com/watch?v=H8uFV2Useho

# show message of completion when done
echo done everything
