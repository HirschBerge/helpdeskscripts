#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
FLASH='\e[5m'
END='\033[0m'
echo -e "Your MAC Address is: ${RED}`ifconfig -a |grep ether | awk -F" " {'print $2'}`${NC}."

echo "Please tell Josh or Steve, and don't forget to write it down!"
echo "~Hirschy"
sleep 3
echo "Press any key to exit."
echo -e "${RED}${FLASH}Exiting in 30 seconds, press ctrl + c to exit sooner!${END}"
sleep 30
