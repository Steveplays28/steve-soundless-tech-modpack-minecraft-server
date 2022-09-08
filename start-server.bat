@Echo off
title "steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server"

start start-packwiz-server.bat

"C:\Program Files\Eclipse Adoptium\jdk-17.0.2.8-hotspot\bin\java.exe" -jar packwiz-installer-bootstrap.jar -g -s server http://lineofflat.duckdns.org:24465/pack.toml
"C:\Program Files\Eclipse Adoptium\jdk-17.0.2.8-hotspot\bin\java.exe" -jar -Xms8196m -Xmx8196m quilt-server-launch.jar nogui

pause
