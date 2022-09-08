#!

# Change window title
"\033]0;steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server\007"

./start-packwiz-server.bash &

java -jar packwiz-installer-bootstrap.jar -g -s server http://localhost:8080/pack.toml
java -jar quilt-server-launch.jar nogui
