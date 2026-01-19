#!/usr/bin/env bash

dt=$(date +"%Y-%m-%d %H:%M:%S")
zip -r "${HOME}/backup ${dt}.zip" ./minecraft_data/world ./minecraft_data/world_nether ./minecraft_data/world_the_end
