#!/bin/bash

for i in `seq 1 3`
do
	sed -i '$d' ~/.bashrc
done

rm -rf ~/Desktop/drivewiper5003.sh  ~/Desktop/MACFinder.sh  ~/Desktop/README.md  ~/Desktop/README.odt  ~/Desktop/toolkitcreator.sh

git stash

git pull
bash ~/helpdeskscripts/install.sh

       
