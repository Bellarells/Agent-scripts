#!/bin/bash

## Author: Sherrell
##Date: Nov 2022

echo "Installing apache this will take a few min..."

yum install httpd -y
systemctl start httpd
systemctl status httpd
systemctl enable httpd
firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --reload
iptables-save | grep 80


 echo "Apache installed successfully"
