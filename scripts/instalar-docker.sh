#!/bin/bash

# Instalar Docker 
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker

# Agregar usuario ubuntu a grupo docker
sudo groupadd docker
sudo usermod -aG docker ubuntu








# # 1. Actualizar dependencias e instalar otras para utilizar repositorios por HTTPS

# sudo apt-get update

# sudo apt-get install \
#    ca-certificates \
#    curl \
#    gnupg \
#    lsb-release

# # 2. Añadir una llave GPG oficial para Docker 

# sudo mkdir -p /etc/apt/keyrings

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# # 3. Instalar Docker Engine

# sudo apt-get update

# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin