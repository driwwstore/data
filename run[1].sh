#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	bhoikfostyahya
# //	Dscription: Xray Menu Management
# //	email: admin@bhoikfostyahya.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================
# // font color configuration | BHOIKFOST YAHYA AUTOSCRIPT
# COLOR VALIDATION
clear
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[36m"
GREEN='\033[0;32m'
grenbo="\e[92;1m"
yellow='\033[0;33m'
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain)
WKT=$(curl -s ipinfo.io/timezone)
IPVPS=$(curl -s ipv4.icanhazip.com)
tram=$(free -m | awk 'NR==2 {print $2}')
swap=$(free -m | awk 'NR==4 {print $2}')
freq=$(awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo)
cores=$(awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo)
cname=$(awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo)
Exp="Never Expired"
Name="Driww Tunnel"
Open_SSH=$(systemctl status ssh | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Dropbear=$(systemctl status dropbear | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Dropbear_Websocket=$(systemctl status dropbear | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
SSH_Websocket=$(systemctl status ws | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
OpenVPN=$(systemctl status openvpn | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Nginx_Webserver=$(systemctl status nginx | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Haproxy=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
DNS_Server=$(systemctl status server | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
DNS_Client=$(systemctl status client | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
OpenVPN_Websocket=$(systemctl status ws | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vmess_TLS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vmess_gRPC=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vmess_None_TLS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vless_TLS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vless_gRPC=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
XRAY_Vless_None_TLS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Trojan_gRPC=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Trojan_WS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Shadowsocks_WS=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Shadowsocks_gRPC=$(systemctl status haproxy | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Iptables=$(systemctl status netfilter-persistent | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Squid=$(systemctl status squid | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
BadVPN=$(systemctl status badvpn3 | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
RClocal=$(systemctl status rc-local | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
Autorebot=$(systemctl status rc-local | grep active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g')
if [[ $Open_SSH == "running" ]]; then
    status_1="${grenbo}Online${NC}"
else
    status_1="${RED}Offline${NC}"
fi

if [[ $Dropbear == "running" ]]; then
    status_2="${grenbo}Online${NC}"
else
    status_2="${RED}Offline${NC}"
fi

if [[ $Dropbear_Websocket == "running" ]]; then
    status_3="${grenbo}Online${NC}"
else
    status_3="${RED}Offline${NC}"
fi

if [[ $SSH_Websocket == "running" ]]; then
    status_4="${grenbo}Online${NC}"
else
    status_4="${RED}Offline${NC}"
fi

if [[ $OpenVPN == "exited" ]]; then
    status_5="${grenbo}Online${NC}"
else
    status_5="${RED}Offline${NC}"
fi

if [[ $Nginx_Webserver == "running" ]]; then
    status_6="${grenbo}Online${NC}"
else
    status_6="${RED}Offline${NC}"
fi

if [[ $Haproxy == "running" ]]; then
    status_7="${grenbo}Online${NC}"
else
    status_7="${RED}Offline${NC}"
fi

if [[ $DNS_Server == "running" ]]; then
    status_8="${grenbo}Online${NC}"
else
    status_8="${RED}Offline${NC}"
fi

if [[ $DNS_Client == "running" ]]; then
    status_9="${grenbo}Online${NC}"
else
    status_9="${RED}Offline${NC}"
fi

if [[ $OpenVPN_Websocket == "running" ]]; then
    status_10="${grenbo}Online${NC}"
else
    status_10="${RED}Offline${NC}"
fi

if [[ $XRAY_Vmess_TLS == "running" ]]; then
    status_11="${grenbo}Online${NC}"
else
    status_11="${RED}Offline${NC}"
fi

if [[ $XRAY_Vmess_gRPC == "running" ]]; then
    status_12="${grenbo}Online${NC}"
else
    status_12="${RED}Offline${NC}"
fi

if [[ $XRAY_Vmess_None_TLS == "running" ]]; then
    status_13="${grenbo}Online${NC}"
else
    status_13="${RED}Offline${NC}"
fi

if [[ $XRAY_Vless_TLS == "running" ]]; then
    status_14="${grenbo}Online${NC}"
else
    status_14="${RED}Offline${NC}"
fi

if [[ $XRAY_Vless_gRPC == "running" ]]; then
    status_15="${grenbo}Online${NC}"
else
    status_15="${RED}Offline${NC}"
fi

if [[ $XRAY_Vless_None_TLS == "running" ]]; then
    status_16="${grenbo}Online${NC}"
else
    status_16="${RED}Offline${NC}"
fi

if [[ $Trojan_gRPC == "running" ]]; then
    status_17="${grenbo}Online${NC}"
else
    status_17="${RED}Offline${NC}"
fi

if [[ $Trojan_WS == "running" ]]; then
    status_18="${grenbo}Online${NC}"
else
    status_18="${RED}Offline${NC}"
fi

if [[ $Shadowsocks_WS == "running" ]]; then
    status_19="${grenbo}Online${NC}"
else
    status_19="${RED}Offline${NC}"
fi

if [[ $Shadowsocks_gRPC == "running" ]]; then
    status_20="${grenbo}Online${NC}"
else
    status_20="${RED}Offline${NC}"
fi

if [[ $Iptables == "exited" ]]; then
    status_21="${grenbo}Online${NC}"
else
    status_21="${RED}Offline${NC}"
fi

if [[ $Squid == "running" ]]; then
    status_22="${grenbo}Online${NC}"
else
    status_22="${RED}Offline${NC}"
fi

if [[ $BadVPN == "running" ]]; then
    status_23="${grenbo}Online${NC}"
else
    status_23="${RED}Offline${NC}"
fi

if [[ $RClocal == "exited" ]]; then
    status_24="${grenbo}Online${NC}"
else
    status_24="${RED}Offline${NC}"
fi

if [[ $Autorebot == "exited" ]]; then
    status_25="${grenbo}Online${NC}"
else
    status_25="${RED}Offline${NC}"
fi
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│\\e[42m       ⇱ Subscription Information ⇲      \E[0m"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e " ${Blue}Operating System$NC    $grenbo:$NC$yellow $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')$NC"
echo -e " ${Blue}Client Name$NC         $grenbo:$NC$yellow $Name$NC"
echo -e " ${Blue}Total Amount Of RAM$NC $grenbo:$NC$yellow $tram MB$NC"
echo -e " ${Blue}Ip Server$NC           $grenbo:$NC$yellow $IPVPS$NC"
echo -e " ${Blue}Isp Server$NC          $grenbo:$NC$yellow $ISP$NC"
echo -e " ${Blue}City Server$NC         $grenbo:$NC$yellow $CITY$NC"
echo -e " ${Blue}Domain$NC              $grenbo:$NC$yellow $(cat /etc/xray/domain)$NC"
echo -e " ${Blue}Server Uptime$NC       $grenbo:$NC$yellow $(uptime -p | cut -d " " -f 2-10000)$NC"
echo -e " ${Blue}Exp Script$NC          $grenbo:$NC$yellow $Exp$NC"
echo -e " ${Blue}Version$NC             $grenbo:$NC$yellow Version 2.0.1$NC"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│\\e[42m         ⇱ Service Information ⇲         \E[0m"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m│${NC} ${Blue}Service Open_SSH$NC              $grenbo:$NC $status_1"
echo -e "\033[1;93m│${NC} ${Blue}Service Dropbear$NC              $grenbo:$NC $status_2"
echo -e "\033[1;93m│${NC} ${Blue}Service Dropbear_Websocket$NC    $grenbo:$NC $status_3"
echo -e "\033[1;93m│${NC} ${Blue}Service SSH_Websocket$NC         $grenbo:$NC $status_4"
echo -e "\033[1;93m│${NC} ${Blue}Service OpenVPN$NC               $grenbo:$NC $status_5"
echo -e "\033[1;93m│${NC} ${Blue}Service Nginx_Webserver$NC       $grenbo:$NC $status_6"
echo -e "\033[1;93m│${NC} ${Blue}Service Haproxy$NC               $grenbo:$NC $status_7"
echo -e "\033[1;93m│${NC} ${Blue}Service DNS_Server$NC            $grenbo:$NC $status_8"
echo -e "\033[1;93m│${NC} ${Blue}Service DNS_Client$NC            $grenbo:$NC $status_9"
echo -e "\033[1;93m│${NC} ${Blue}Service OpenVPN_Websocket$NC     $grenbo:$NC $status_10"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vmess_TLS$NC        $grenbo:$NC $status_11"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vmess_gRPC$NC       $grenbo:$NC $status_12"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vmess_None_TLS$NC   $grenbo:$NC $status_13"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vless_TLS$NC        $grenbo:$NC $status_14"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vless_gRPC$NC       $grenbo:$NC $status_15"
echo -e "\033[1;93m│${NC} ${Blue}Service Xray_Vless_None_TLS$NC   $grenbo:$NC $status_16"
echo -e "\033[1;93m│${NC} ${Blue}Service Trojan_gRPC$NC           $grenbo:$NC $status_17"
echo -e "\033[1;93m│${NC} ${Blue}Service Trojan_WS$NC             $grenbo:$NC $status_18"
echo -e "\033[1;93m│${NC} ${Blue}Service Shadowsocks_WS$NC        $grenbo:$NC $status_19"
echo -e "\033[1;93m│${NC} ${Blue}Service Shadowsocks_gRPC$NC      $grenbo:$NC $status_20"
echo -e "\033[1;93m│${NC} ${Blue}Service Iptables$NC              $grenbo:$NC $status_21"
echo -e "\033[1;93m│${NC} ${Blue}Service Squid$NC                 $grenbo:$NC $status_22"
echo -e "\033[1;93m│${NC} ${Blue}Service BadVPN$NC                $grenbo:$NC $status_23"
echo -e "\033[1;93m│${NC} ${Blue}Service RClocal$NC               $grenbo:$NC $status_24"
echo -e "\033[1;93m│${NC} ${Blue}Service Autoreboot$NC            $grenbo:$NC $status_25"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
