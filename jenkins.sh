#!/bin/bash

#Author : Richard

#Date : Februaryje,2023

#Script to install jenkins on centos 7
# Update system
sudo yum update -y

# Install Java
sudo yum install java-1.8.0-openjdk-devel -y

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins
sudo yum install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --reload
