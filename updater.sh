#!/usr/bin/env bash
LCYAN=$(echo -en '\033[01;36m')
LYELLOW=$(echo -en '\033[01;33m')

clear
echo "${LCYAN}Updating LSCAN..."
  sleep 1
  clear
  echo -e "${LYELLOW}\c"
  sudo apt --only-upgrade install netdiscover
  sudo apt --only-upgrade install net-tools
  sudo apt --only-upgrade install iftop
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
