#!/bin/bash

## Author: Sherrell
##Date: Nov 2022

echo "Installing docker this will take a few min..."
sudo yum install -y yum-utils
 sudo yum-config-manager \
	     --add-repo \
	         https://download.docker.com/linux/centos/docker-ce.repo
 
 sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
 sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin
 
 sudo systemctl start docker
 sudo docker run hello-world




echo "Docker installed successfully"



