#!/bin/bash

#Author: arlex
#Date: feb 2023

#Description: installation of Docker Engine on Oracle Linux 8 or 7


#1. Run system update:
#First of all, run the system update command to rebuild the repo cache and update installed packages.

sudo yum update

#2. Install Yum Config-manager
#To add a repository without going through the repo file and edit to insert a repository URL, we can use the yum-config-manager tool.

sudo yum install -y yum-utils

#3. Add Docker repository to Oracle Linux and Update Repo

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update

#4. Command to install Docker-Ce on Oracle Linux

sudo yum install docker-ce docker-ce-cli containerd.io

#if you are running any error, you may need to enable the developer package

##---sudo yum-config-manager --enable ol7_developer---###
#5. Enable and start docker service, once the docker is installed run its daemon and mark it enabled, 
#so that it can start automatically with system boot.

sudo systemctl start docker
sudo systemctl enable docker