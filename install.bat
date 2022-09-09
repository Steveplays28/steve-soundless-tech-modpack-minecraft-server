@echo off
title steve-soundless-tech-modpack-minecraft - 1.18.2 Quilt Minecraft server installer

set modpack_directory="steve-soundless-tech-modpack-minecraft"
if not exist "../%modpack_directory%" (
	echo Directory %modpack_directory% does not exist, making directory and pulling modpack files from Git...

	cd ../
	mkdir "%modpack_directory%"
	git clone "https://github.com/Steveplays28/steve-soundless-tech-modpack-minecraft.git"
	echo Successfully cloned modpack repository.
	echo.

	cd ./steve-soundless-tech-modpack-minecraft-server
)

java -jar server/quilt-installer-0.4.4.jar install server 1.18.2 --download-server

echo.
echo If the installation was successful, run start-server.bat to start the server.
pause
