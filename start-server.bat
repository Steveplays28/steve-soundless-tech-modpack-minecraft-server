@Echo off
title "steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server"

start start-packwiz-server.bat

"C:\Program Files\Eclipse Adoptium\jdk-17.0.2.8-hotspot\bin\java.exe" -jar packwiz-installer-bootstrap.jar -g -s server http://localhost:8080/pack.toml
"C:\Program Files\Eclipse Adoptium\jdk-17.0.2.8-hotspot\bin\java.exe" -jar quilt-server-launch.jar nogui

pause
