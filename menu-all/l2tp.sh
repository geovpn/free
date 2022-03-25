#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e "            L2TP & PPTP Account  " 
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " 1   Creating L2TP Account"
echo -e " 2   Create Account PPTP"
echo -e " 3   Deleting L2TP Account"
echo -e " 4   Delete PPTP Account"
echo -e " 5   Check User Login PPTP"
echo -e " 6   Renew L2TP Account"
echo -e " 7   Renew PPTP Account"
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e ""
read -p "     Please Input Number  [1-7 or x] :  "  l2tp
echo -e ""
case "$l2tp" in
1)
add-l2tp
;;
2)
add-pptp
;;
3)
del-l2tp
;;
4)
del-pptp
;;
5)
cek-pptp
;;
6)
renew-l2tp
;;
7)
renew-pptp
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
