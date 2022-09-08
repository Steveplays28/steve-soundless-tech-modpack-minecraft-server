#!

# Change window title
PROMPT_COMMAND='echo -en "\033]0; steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server \a"'

./start-packwiz-server.bash &

java -jar packwiz-installer-bootstrap.jar -g -s server http://lineofflat.duckdns.org:24465/pack.toml
java -jar -Xms8196m -Xmx8196m quilt-server-launch.jar nogui
