#!/bin/bash

for i in wipe MAC newtoolkit
do
	sudo rm /usr/local/bin/$i
done

rm -rf ~/Desktop/drivewiper5003.sh  ~/Desktop/MACFinder.sh  ~/Desktop/README.md  ~/Desktop/README.odt  ~/Desktop/toolkitcreator.sh

git stash

git pull
bash ~/helpdeskscripts/install.sh

       
