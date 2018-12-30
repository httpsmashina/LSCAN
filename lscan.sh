#!/usr/bin/env bash
#init

clear

LCYAN=$(echo -en '\033[01;36m')
LYELLOW=$(echo -en '\033[01;33m')

while [[ true ]]; do

clear

  echo "${LYELLOW}HH \     HHHHHH\   HHHHHH\   HHHHHH\  HH\   HH \ " 
  echo "${LYELLOW}HH |    HH  __HH\ HH  __HH\ HH  __HH\ HHH\  HH |" 
  echo "${LYELLOW}HH |    HH /  \__|HH /  \__|HH /  HH |HHHH\ HH |" 
  echo "${LYELLOW}HH |    \HHHHHH\  HH |      HHHHHHHH |HH HH\HH |" 
  echo "${LYELLOW}HH |     \____HH\ HH |      HH  __HH |HH \HHHH |"
  echo "${LYELLOW}HH |    HH\   HH |HH |  HH\ HH |  HH |HH |\HHH |" 
  echo "${LYELLOW}HHHHHHHH\HHHHHH  |\HHHHHH  |HH |  HH |HH | \HH |" 
  echo "${LYELLOW}\________\______/  \______/ \__|  \__|\__|  \__|" 
  echo ""
  echo "${LCYAN}                  BY MASHINA" 
  echo "${LCYAN}           INSTAGRAM @https.mashina"

echo

  echo "${LCYAN}--------------------------------"  
  echo "${LYELLOW}Select task or press Q to EXIT"
  echo "${LCYAN}--------------------------------"  

echo

  echo -e "${LYELLOW}1)\c" ; echo "${LCYAN} Scan connections"
  echo -e "${LYELLOW}2)\c" ; echo "${LCYAN} IfConfig"
  echo -e "${LYELLOW}3)\c" ; echo "${LCYAN} ARP scan"
  echo -e "${LYELLOW}4)\c" ; echo "${LCYAN} TCP dump"
  echo -e "${LYELLOW}5)\c" ; echo "${LCYAN} Netdiscover"
  echo -e "${LYELLOW}6)\c" ; echo "${LCYAN} Show bandwidth"
  echo -e "${LYELLOW}7)\c" ; echo "${LCYAN} WHOIS lookup"
  echo -e "${LYELLOW}8)\c" ; echo "${LCYAN} DNS lookup"
  echo -e "${LYELLOW}9)\c" ; echo "${LCYAN} Ping"
  echo -e "${LYELLOW}Q)\c" ; echo "${LCYAN} EXIT"
  echo -e "${LYELLOW}update)\c" ; echo "${LCYAN} Update"
  echo -e "${LYELLOW}# \c"

read -r answer
case "$answer" in

  1) clear
  echo "${LYELLOW}" ; netstat -a
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  2) clear
  echo "${LYELLOW}" ; ifconfig
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  3) clear
  echo "${LYELLOW}" ; arp -a
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  4) clear
  echo "${LYELLOW}" ; tcpdump
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  5) clear
  echo "${LYELLOW}" ; netdiscover
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  #IFTOP SHOW BANDWIDTH
  6) clear
  echo -e "${LYELLOW}\c"
  iftop
  echo "${LCYAN}"
  read -n1 -r -p "Press any key to continue" key
  clear ;;

  7) clear
  echo -e "${LCYAN}Enter URL: \c"
  echo -e "${LYELLOW}\c"
  read -r url

  if [[ $url == "" ]]; then 
      clear
      echo "${LCYAN}No URL entered"
      echo "${LCYAN}Returning..."
      sleep 1
      clear
    continue
  fi

  whois $url
  echo "${LCYAN}" ; read -n1 -r -p "Press any key to continue" key
  clear ;;

  8) clear
  echo -e "${LCYAN}Enter address to lookup: \c"
  echo -e "${LYELLOW}\c" 
  read -r DNS 

  if [[ $DNS == "" ]]; then 
      clear
      echo "${LCYAN}No URL entered"
      echo "${LCYAN}Returning..."
      sleep 1
      clear
    continue
  fi

  dig $DNS
  echo "${LCYAN}" ; read -n1 -r -p "Press any key to continue" key
  clear ;;

  9) clear
  echo -e "${LCYAN}\c" ; echo -e "Enter address to ping: \c" 
  echo -e "${LYELLOW}\c"
  read -r ping ;

  if [[ $ping == "" ]]; then 
      clear
      echo "${LCYAN}No URL entered"
      echo "${LCYAN}Returning..."
      sleep 1
      clear
    continue
  fi

  echo -e "${LYELLOW}\c"
  ping $ping
  echo "${LCYAN}" ; read -n1 -r -p "Press any key to continue" key
  clear ;;

  q) clear 
  exit ;;

  Q) clear 
  exit ;;

  update) clear
  echo "${LCYAN}Updating LSCAN..."
  sleep 1
  clear
  echo -e "${LYELLOW}\c"
  sudo apt --only-upgrade install netdiscover
  sudo apt --only-upgrade install net-tools
  sudo apt --only-upgrade install iftop
  clear
  echo "${LCYAN}LSCAN updated..."
  echo "${LCYAN}Returning..."
  sleep 1
  clear ;;
  
  esac
done 