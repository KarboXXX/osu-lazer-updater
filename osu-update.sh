#!/bin/bash
#if [ $(id -u) == 0 ]; then
notify-send 'osu-lazer updater for Linux' 'Update starting...';
cd /usr/share/osu-lazer;
trash ./osu.AppImage;
if wget -nc "https://github.com/ppy/osu/releases/latest/download/osu.AppImage"; then
   notify-send 'osu-lazer updater for Linux' 'Update sucessfull!';
   sudo chmod +x ./osu.AppImage
else
   notify-send 'osu-lazer updater for Linux' 'An error occurred.';
fi
#else
#   echo 'please run as sudo.';
#fi
