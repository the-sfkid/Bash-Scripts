#!/bin/bash

# Install Java 11 (Amazon Corretto)
sudo yum install java-11-amazon-corretto -y
java -version

# Install Maven
sudo yum install maven -y
java -version

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install OpenJDK 11
sudo amazon-linux-extras install java-openjdk11 -y

# Install Jenkins
sudo yum install jenkins -y

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Check Jenkins service status
sudo systemctl status jenkins

# Display initial admin password and save it to a file
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > adminpass

