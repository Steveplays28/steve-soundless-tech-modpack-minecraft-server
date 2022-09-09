# Change window title
title="steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server installer"
echo -e '\033]2;'$title'\007'

# Start Quilt server installer
java -jar quilt-installer-0.4.4.jar install server 1.18.2 --download-server

read -p "Successfully installed Quilt 1.18.2 server! Run start-server.sh to start the server."
