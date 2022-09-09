#!/bin/bash

# Change window title
title="steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server"
echo -e '\033]2;'$title'\007'

# Start Packwiz in new window
nohup ./start-packwiz-server.bash &

# Start Minecraft server
java -jar packwiz-installer-bootstrap.jar -g -s server http://lineofflat.duckdns.org:24465/pack.toml
java -jar -Xms6144m -Xmx6144m -XX:ParallelGCThreads=4 -XX:+UseCodeCacheFlushing -XX:+UseStringDeduplication ./server/quilt-server-launch.jar nogui

read -p "Server stopped."
