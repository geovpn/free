#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e "              SSR & SS Account  " 
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " 1   Create SSR Account"
echo -e " 2   Create Shadowsocks Account"
echo -e " 3   Deleting SSR Account"
echo -e " 4   Delete Shadowsocks Account"
echo -e " 5   Renew SSR Account Active"
echo -e " 6   Renew Shadowsocks Account"
echo -e " 7   Check User Login Shadowsocks"
echo -e " 8   Show Other SSR Menu"
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e ""
read -p "     Please Input Number  [1-8 or x] :  "  ssssr
echo -e ""
case $ssssr in
1)
add-ssr
;;
2)
add-ss
;;
3)
del-ssr
;;
4)
del-ss
;;
5)
renew-ssr
;;
6)
renew-ss
;;
7)
cek-ss
;;
8)
ssr
;;
*)
clear
menu
;;
esac

