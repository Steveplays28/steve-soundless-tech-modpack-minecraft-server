@echo off
title steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server

cd server/
java -jar packwiz-installer-bootstrap.jar -g -s server http://lineofflat.duckdns.org:24465/pack.toml
java -jar -Xms6144m -Xmx6144m -XX:ParallelGCThreads=4 -XX:+UseCodeCacheFlushing -XX:+UseStringDeduplication quilt-server-launch.jar nogui

echo.
echo Server stopped.
pause
