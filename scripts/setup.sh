#!/bin/bash

echo "[*] Installation of Jenkins et nginx"
bash install.sh
echo "[+] End installation"

echo "[*] Configuration of nginx"
sudo unlink /etc/nginx/sites-enabled/default
sudo mv config/reverse-proxy.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo mkdir /var/log/nginx/jenkins
echo "[+] End of the configuration"

echo "[*] Restart of nginx"
sudo systemctl restart nginx
echo "[+] End of the restart"
