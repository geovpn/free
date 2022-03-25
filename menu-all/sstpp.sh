#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e "              SSTP Account  " 
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " 1   Create Account SSTP"
echo -e " 2   Delete SSTP Account"
echo -e " 3   Renew SSTP Account"
echo -e " 4   Check User Login SSTP"
echo -e ""
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m═══════════════════════════════════════" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  sstpp
echo -e ""
case $sstpp in
1)
add-sstp
;;
2)
del-sstp
;;
3)
renew-sstp
;;
4)
cek-sstp
;;
*)
clear
menu
;;
esac

