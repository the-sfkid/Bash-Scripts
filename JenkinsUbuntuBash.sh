#!/bin/bash
sudo apt install default-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y
sudo apt-get install jenkins -y

sudo systemctl start jenkins.service
sudo systemctl status jenkins

echo "InitialAdminPassword"
echo "-------------------"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > adminpassword
