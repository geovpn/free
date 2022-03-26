#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
Blink='\e[5m'
yell='\e[33m'
lgreen='\e[92m'
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
#EDIT SETUP IZIN
clear
sudo hostnamectl set-hostname Geo-Project
clear
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
clear
echo ""  
echo -e "$yell $Blink                Premium Server Script          $NC"
echo -e "$yell $Blink     '-------------------------------------------------------' $NC"
echo "" 
echo -e "$green   ...........................................................$NC"
echo ''
echo -e "$green                   Telegram:$NC $red@sampiiiiu               $NC"
echo -e "$green                 Scrript Version:$NC $red 1.0                $NC"
echo ''
echo ''
echo ''
echo ''
echo ''
echo -e "$green                  Proses akan mulai dalam 5 detik!              $NC"
echo -e "$green   ...........................................................$NC"
sleep 5
clear
echo -e "$green   =============================================$NC"
echo -e "$green    Silahkan Masukkan DOMAIN, PENTING !!! $NC"
echo -e "$green   =============================================$NC"
mkdir /etc/v2ray
mkdir /var/lib/premium-script;
read -p " Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo "$host" >> /root/domain
echo "$host" >> /etc/v2ray/domain
echo "V1.0" >> /home/version
echo "@sampiiiiu" >> /home/contact
clear
echo -e "$green   =============================================$NC"
echo -e "$green               Silahkan Tunggu sebentar             $NC"
echo -e "$green    Process Update & Upgrade Sedang Berjalan  $NC"
echo -e "$green   =============================================$NC"
sleep 2
apt-get update && apt-get upgrade -y && update-grub -y
clear
echo -e "$green   =============================================$NC"
echo -e "$green          Process Update & Upgrade Selesai        $NC"
echo -e "$green   =============================================$NC"
sleep 2
clear
echo -e "$green   =============================================$NC"
echo -e "$green         Installing AutoScript Premium       $NC"
echo -e "$green   =============================================$NC"
sleep 2
#install Domain
#wget https://geovpn.github.io/free/install/cf.sh && chmod +x cf.sh && ./cf.sh
#install v2ray
wget https://geovpn.github.io/free/install/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
#install ssh ovpn
wget https://geovpn.github.io/free/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://geovpn.github.io/free/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
wget https://geovpn.github.io/free/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://geovpn.github.io/free/install/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
wget https://geovpn.github.io/free/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
wget https://geovpn.github.io/free/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://geovpn.github.io/free/install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
# Install Neofetch
#install edu
wget https://geovpn.github.io/free/install/cdn.sh && chmod +x cdn.sh && screen -S cdn.sh ./cdn.sh
#install ohp
wget https://geovpn.github.io/free/install/ohp-db.sh && chmod +x ohp-db.sh && screen -S ohp-db.sh ./ohp-db.sh
wget https://geovpn.github.io/free/ohp-ovpn.sh && chmod +x ohp-ovpn.sh && screen -S ohp-ovpn.sh ./ohp-ovpn.sh
#install lolcat
wget https://raw.githubusercontect.com/project-vps/ngopi/main/install/lolcat.sh && chmod +x lolcat.sh && ./lolcat.sh

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/cdn.sh
rm -f /root/ohp-db.sh
rm -f /root/ohp-ovpn.sh
rm -f /root/lolcat.sh

cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=http://sampiiiiu

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://geovpn.github.io/free/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "============-Autoscript Premium-=============" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "---------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 88"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 443, 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo "   - SSH WEBSOCKET OVER SSL  : 443, 2053"  | tee -a log-install.txt
echo "   - SSH WEBSOCKET OVER HTTP : 2095" | tee -a log-install.txt
echo "   - SSH WEBSOCKET OVER OVPN : 2082" | tee -a log-install.txt
echo "   - OPEN HTTP PUNCHER DB    : 8181" | tee -a log-install.txt
echo "   - OPEN HTTP PUNCHER OSSH  : 8282" | tee -a log-install.txt
echo "   - OPEN HTTP PUNCHER OVPN  : 8484" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo "============-Autoscript Premium-=============" | tee -a log-install.txt
echo ""
rm -f setup.sh
certv2ray

