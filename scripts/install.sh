#!/bin/bash

# Installation of Jenkins
echo -e "\n### Installation of Jenkins ###"
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins

# Installation of nginx
echo -e "\n### Installation of nginx ###"
sudo apt install -y nginx
