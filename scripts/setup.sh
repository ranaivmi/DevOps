#!/bin/bash

echo "[*] Installation de Jenkins et nginx"
bash install.sh
echo "[+] Fin de l'installation"

echo "[*] Configuration de nginx"
sudo unlink /etc/nginx/sites-enabled/default
sudo mv config/reverse-proxy.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo mkdir /var/log/nginx/jenkins
echo "[+] Fin de la configuration"

echo "[*] Redémarrage de nginx"
sudo systemctl restart nginx
echo "[+] Fin du redémarrage"
