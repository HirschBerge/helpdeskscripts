#!/bin/sh
echo "Changing permissions..."
sleep 1
sudo chmod 775 -R $PWD/*
sudo chown 1000.1000 -R $PWD/*
echo "Adding scripts to the Desktop..."
sleep 1
for i in `ls -1|grep -i -v lic| grep -v install | grep -v update`
do 
	ln -s $PWD/$i ~/Desktop/$i
	sleep 1
done
echo "Creating alias 'wipe' to wipe a drive"
sleep 1
sudo ln -s $PWD/drivewiper5003.sh /usr/local/bin/wipe
echo "Creating alias 'MAC' to find the mac address"
sudo ln -s $PWD/MACFinder.sh /usr/local/bin/MAC
sleep 1
echo "Creating alias 'newtoolkit' to create a new linux toolkit (do not use this from the actual wiping station. ONLY from one flashdrive to another!!!"
sleep 5
sudo ln -s $PWD/toolkitcreator.sh /usr/local/bin/newtoolkit
