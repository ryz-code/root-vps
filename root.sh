#!/bin/bash


sed -i "/PasswordAuthentication no/d" /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "PermitRootLogin yes" | sudo tee -a /etc/ssh/sshd_config
echo "PasswordAuthentication yes" | sudo tee -a /etc/ssh/sshd_config
systemctl restart sshd
ip=$(curl ifconfig.me/ip)
clear
sleep 1
               
echo
echo "Cara Mudah Untuk Root Dan Login Vps"
echo "============================================"
user=root
echo "Masukkan Password: " 
read -e pw
pwe=$(mkpasswd $pw)

clear
usermod --password $pwe $user
clear

echo ""
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Ip address = $ip
Username   = $user
Password   = $pw
============================================"
sleep 1
echo ""
echo 
exit
