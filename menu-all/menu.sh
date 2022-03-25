#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
echo -e ""
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/v2ray/domain)
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[032;1mIPVPS:\e[0m $IPVPS"
	echo -e "   \e[032;1mDOMAIN:\e[0m $DOMAIN"
echo -e  ""
echo -e  "   -------------------------MENU OPTIONS------------------------" | lolcat
echo -e   "   1  SSH & OpenVPN Menu"
echo -e   "   2  Panel Wireguard "
echo -e   "   3  Panel L2TP & PPTP Account"
echo -e   "   4  Panel SSTP  Account"
echo -e   "   5  Panel SSR & SS Account"
echo -e   "   6  Panel V2Ray"
echo -e   "   7  Panel VLess"
echo -e   "   8  Panel TRojan"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   9    Add Subdomain Host For VPS"
echo -e   "   10   Renew Certificate V2RAY"
echo -e   "   11   Change Port All Account"
echo -e   "   12   Autobackup Data VPS"
echo -e   "   13   Backup Data VPS"
echo -e   "   14   Restore Data VPS"
echo -e   "   15   Webmin Menu"
echo -e   "   16   Limit Bandwith Speed Server"
echo -e   "   17   Check Usage of VPS Ram" 
echo -e   "   18   Reboot VPS"
echo -e   "   19   Speedtest VPS"
echo -e   "   20   Information Display System" 
echo -e   "   21   Info Script Auto Install"
echo -e   "   22   Install BBR"
echo -e   "   23   Add ID Cloudflare"
echo -e   "   24   Cloudflare Add-Ons"
echo -e   "   25   Pointing BUG"
echo -e   "   26   Auto Reboot"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-30 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
add-host
;;
10)
certv2ray
;;
11)
change-port
;;
12)
autobackup
;;
13)
backup
;;
14)
restore
;;
15)
wbmn
;;
16)
limit-speed
;;
17)
ram
;;
18)
reboot
;;
19)
speedtest
;;
20)
info
;;
21)
about
;;
22)
bbr
;;
23)
cff
;;
24)
cfd
;;
25)
cfh
;;
26)
autoreboot
;;
x)
exit
;;
*)
clear
menu
;;
esac
