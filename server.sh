#!/bin/bash

set -e

# =========================================
# Automated Server Setup Script (Debian/Ubuntu)
# Author: WolfTitan
# Features: Docker CE, Portainer CE, CasaOS, BTop, Nala, duf, Fastfetch, OpenSSH, NCDU
# =========================================

# Clear the terminal
clear

echo "$(tput setaf 3)  Welcome to the automated Server installer script by Vas :)."
echo "  This basic script should work on Ubuntu based systems"
echo "  Installing Docker Engine, Casa OS, Portainer for Docker, BTop, Nala"

read -p "Press Enter to continue" </dev/tty

# -----------------------------
# Utility function: countdown
# -----------------------------
for count in {1..10}; do
    echo "**************************************************"
    echo -ne "${count}\r"
    sleep 1
done

# -----------------------------
# Update & basic packages
# -----------------------------
echo "Updating system packages..."
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y sudo curl wget git htop unzip software-properties-common apt-transport-https ca-certificates gnupg lsb-release

# -----------------------------
# Docker CE Installation
# -----------------------------
echo "Installing Docker CE..."

##Runing the following command to uninstall all conflicting packages:

sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1)

## Add Docker's official GPG key:

apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

## To install the latest version, run:

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


## The Docker service starts automatically after installation. To verify that Docker is running, use:

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

## Verify that the installation is successful by running the hello-world image:

sudo docker run hello-world

## Timer
for count in {1..10}; do
    echo "**************************************************"
    echo -ne "${count}\r"
    sleep 1
done
echo "***** Manage Docker as a non-root user *****"

## Manage Docker as a non-root user

## Create the docker group.
sudo groupadd docker
## Add your user to the docker group.
sudo usermod -aG docker $USER
## You can also run the following command to activate the changes to groups:
newgrp docker

docker ps

# -----------------------------
# Portainer CE Installation
# -----------------------------
echo "Installing Portainer CE..."

sudo docker volume create portainer_data

## If you require HTTP port 9000 / 8000 open for legacy reasons, add the following to your docker run command:
docker run -d -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts

sudo docker ps

## Timer
for count in {1..10}; do
    echo "**************************************************"
    echo -ne "${count}\r"
    sleep 1
done
echo "***** Casa OS Installation *****"

# -----------------------------
# CasaOS Installation
# -----------------------------
echo "Installing CasaOS..."

sudo apt update
curl -fsSL https://get.casaos.io | sudo bash

echo ""
echo ""
echo "$(tput setaf 3) Casa OS installation Complete."
echo "Save the IP address of Casa OS interface"
read -p "Press Enter to continue" </dev/tty

## Timer
for count in {1..10}; do
    echo "**************************************************"
    echo -ne "${count}\r"
    sleep 1
done
echo "***** Other Applications Installing *****"

# -----------------------------
# Other Applications
# -----------------------------
echo "Installing other utilities..."

#BTop
sudo apt install btop -y

#Nala
sudo apt install nala -y 

#DUF
sudo apt install duf -y

#NCDU
sudo apt install ncdu -y

## fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update
sudo apt install fastfetch


## Adding to  ~/.bashrc

echo 'fastfetch' >> ~/.bashrc
echo 'duf' >> ~/.bashrc

# -----------------------------
# Final message
# -----------------------------

# Docker
echo -n "Docker: "
docker --version || echo "Not installed"

# Docker Compose
echo -n "Docker Compose: "
docker compose version || echo "Not installed"

# BTop
echo -n "BTop: "
btop -v 2>/dev/null || echo "Not installed"

# Nala
echo -n "Nala: "
nala --version 2>/dev/null || echo "Not installed"

# duf
echo -n "Duf: "
duf --version 2>/dev/null || echo "Not installed"

# Fastfetch
echo -n "Fastfetch: "
fastfetch --version 2>/dev/null || echo "Not installed"

# OpenSSH
echo -n "OpenSSH: "
ssh -V 2>&1 | head -n1 || echo "Not installed"

echo ""
echo ""
echo "Installation Complete."
echo "You can now logout/login to apply Docker group changes if needed."
echo "Reboot the server if necessary."
read -p "Press Enter to continue" </dev/tty

