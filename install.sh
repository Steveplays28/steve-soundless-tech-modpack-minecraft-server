# Change window title
title="steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server installer"
echo -e '\033]2;'$title'\007'

# Check if modpack is installed
modpack_directory="steve-soundless-tech-modpack-minecraft"
if [ ! -d "../$modpack_directory" ]; then
	echo "Directory $modpack_directory does not exist, making directory and pulling modpack files from Git..."

  	cd ../
	mkdir "$modpack_directory"
	cd "$modpack_directory"
	git clone "https://github.com/Steveplays28/steve-soundless-tech-modpack-minecraft.git"
	echo "Successfully cloned modpack repository."
	echo

	cd ../steve-soundless-tech-modpack-minecraft-server
fi

# Start Quilt server installer
java -jar server/quilt-installer-0.4.4.jar install server 1.18.2 --download-server

echo
read -p "If the installation was successful, run start-server.sh to start the server."
