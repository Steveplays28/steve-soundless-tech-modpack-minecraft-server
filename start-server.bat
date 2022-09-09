@echo off

title steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server

start start-packwiz-server.bat

java -jar packwiz-installer-bootstrap.jar -g -s server http://lineofflat.duckdns.org:24465/pack.toml
java -jar -Xms6144m -Xmx6144m -XX:ParallelGCThreads=4 -XX:+UseCodeCacheFlushing -XX:+UseStringDeduplication ./server/quilt-server-launch.jar nogui

echo Server stopped.
pause
