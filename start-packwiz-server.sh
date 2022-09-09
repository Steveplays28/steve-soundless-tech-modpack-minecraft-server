#!/bin/bash

# Change window title
title="steve-soundless-tech-modpack-minecraft - Packwiz server"
echo -e '\033]2;'$title'\007'

cd ../steve-soundless-tech-modpack-minecraft
~/go/bin/packwiz serve -p=24465
