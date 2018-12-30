#!/usr/bin/env bash
LCYAN=$(echo -en '\033[01;36m')
LYELLOW=$(echo -en '\033[01;33m')

clear
echo "${LCYAN}Installing dependencies, please wait..."
sleep 1
clear

#INSTALLERS
echo -e "${LYELLOW}\c"
sudo apt-get install netdiscover
sudo apt install net-tools
sudo apt-get install iftop

chmod +x lscan.sh

#INIT
clear
echo "${LCYAN}Start LSCAN? (Y/N)"
  	read -r answer
	case "$answer" in

  		Y) clear
		echo "${LCYAN}Starting LSCAN..."
		sleep 1
		sudo ./lscan ;;

		y) clear
		echo "${LCYAN}Starting LSCAN..."
		sleep 1
		sudo ./lscan.sh ;;

		N) clear
		echo "${LCYAN}Quitting..."
		sleep 1
		clear
		exit ;; 

		n) clear
		echo "${LCYAN}Quitting..."
		sleep 1
		clear
		exit ;; 
	esac
