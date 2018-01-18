#!/bin/bash

# Installation de Jenkins
echo -e "\n### Installation de Jenkins ###"
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins

# Installation de nginx
echo -e "\n### Installation de nginx ###"
sudo apt install -y nginx
