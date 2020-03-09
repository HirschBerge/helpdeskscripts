#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
END='\033[0m'
FLASH='\e[5m'
echo "Show list of drives? Y/N"
read ans
if [[ $ans == Y || $ans == y ]]
then
        echo "Showing list of drives: "
        sudo fdisk -l | grep -i "Disk /\|Disk m"
        echo "What drive is your current toolkit? Do not include /dev/"
        read drive1
	echo "What drive are you creating as a new toolkit?"
	read drive2
        echo "Now creating copy of drive /dev/$drive1 onto /dev/$drive2!"
        sudo dd if=/dev/$drive1 of=/dev/$drive2 bs=1M status=progress


elif [[ $ans == N || $ans == n ]]
then
	read drive1
        echo "What drive are you creating as a new toolkit?"
        read drive2
        echo "Now creating copy of drive /dev/$drive1 onto /dev/$drive2!"
        sudo dd if=/dev/$drive1 of=/dev/$drive2 bs=1M status=progress

else
        echo "Please type either Y or N thanks!"
fi
echo -e "${RED}${FLASH}New toolkit creation has completed!!!${END}"
sleep 3
echo "Please press Ctrl + C to exit!"
sleep 10000
