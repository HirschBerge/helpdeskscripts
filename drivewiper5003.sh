#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
END='\033[0m'
FLASH='\e[5m'
dt=$(date '+%m/%d/%Y_%H:%M:%S')
echo "Inspect the drive for multiple boot/storage/recovery partitions. Check out the README.odt for reference photos."
sudo gnome-disks
echo "Showing list of drives: "
drive=`lsblk | grep disk |grep -v Backup |awk '{ print $1 " "$4  }' |dmenu -l 5 -p "Pick which drive you wish to wipe"| awk '{ print $1 }'`
size=`sudo fdisk -l | grep -i "Disk /dev/$drive" | awk -F" " '{print $3}' | awk '{printf "%d\n", $1}'`
if (( size >= 110 )) || (( size <= 4
then
        echo -e "${RED}Now wiping drive /dev/$drive!${END}"
        sudo dd if=/dev/urandom of=/dev/"$drive" bs=1M status=progress
        echo -e "${RED}${FLASH}Wiping has completed at $dt !!!${END}"
else
        echo -e "$size"
        echo -e "${RED}${FLASH}Error: You are trying to wipe a disk that is less than 110 GB. There's a high chance this is the host flashdrive. If you are sure this is the correct drive use\n ${END}${RED}sudo dd if=/dev/urandom of=/dev/<drive here> bs=1M status=progress${NC}"
echo "Drive in question should only have one main partition. See README.odt for reference."
sudo gnome-disks

fi
echo "Please enter Ctrl + C to exit!"
sleep 10000
