#!/bin/bash

# Update system packages
sudo yum update -y

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Upgrade system
sudo yum upgrade -y

# Install Java 17 (Amazon Corretto)
sudo yum install java-17-amazon-corretto -y

# Install Jenkins
sudo yum install jenkins -y

# Enable Jenkins service to start on boot
sudo systemctl enable jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Check Jenkins service status
sudo systemctl status jenkins

# Save initial admin password to file
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > adminpass
