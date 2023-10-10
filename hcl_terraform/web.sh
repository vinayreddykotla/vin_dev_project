#!/bin/bash

# Setup Hostname 
sudo hostnamectl set-hostname "vin_dev_project"

# Update the hostname part of Host File
echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts 

# Update Ubuntu Repository 
sudo apt-get update 

# Download, & Install Utility Softwares 
sudo apt-get install git wget unzip curl tree -y 

# Install Webserver 
sudo apt-get install apache2 -y 

# Deploy Simple Website from GitHub
cd /opt/

# Download the Code
git clone https://github.com/vinayreddykotla/vin_dev_project.git

# Go Inside of the Folder
cd vin_dev_project

# And move the code to DocumentRoot
mv * /var/www/html/ 

# To Restart SSM Agent on Ubuntu 
sudo systemctl restart snap.amazon-ssm-agent.amazon-ssm-agent.service

# Attach Instance profile To EC2 Instance 
# aws ec2 associate-iam-instance-profile --iam-instance-profile Name=SA-EC2-SSM --instance-id ""
