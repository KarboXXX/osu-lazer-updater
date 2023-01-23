#! /bin/bash

gamemoderun /usr/share/osu-lazer/osu.AppImage & sleep 3; sudo renice -19 $(pgrep osu)
