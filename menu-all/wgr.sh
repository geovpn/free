#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
echo -e""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e "                 Wireguard  " 
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " 1   Create Wireguard Account"
echo -e " 2   Delete Wireguard Account"
echo -e " 3   Check User Login Wireguard"
echo -e " 4   Renew Wireguard Account"
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  wgr
echo -e ""
case $wgr in
1)
add-wg
;;
2)
del-wg
;;
3)
cek-wg
;;
4)
renew-wg
;;
*)
clear
menu
;;
esac

