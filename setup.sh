#!/bin/bash

# TODO: Should we use Ansible?

echo "Installing basic packages..."
sudo dnf install -yq \
bind-utils \
git \
jq \
netcat \
python3-pip \
wireshark-cli \
zsh
# podman or docker.io
# kubectl
# helm
# k9s

echo "Installing sysdig..."
# TODO: Convert commands to Fedora
# sudo apt update
# sudo apt install -y software-properties-common curl gnupg
# curl -s https://download.sysdig.com/DRAIOS-GPG-KEY.public | sudo gpg --dearmor -o /usr/share/keyrings/sysdig-archive-keyring.gpg
# echo "deb [arch=amd64 signed-by=/usr/share/keyrings/sysdig-archive-keyring.gpg] https://download.sysdig.com/stable/deb stable-\$(ARCH)/" | sudo tee /etc/apt/sources.list.d/sysdig.list
# sudo apt update
# sudo apt install -y linux-headers-$(uname -r) sysdig

echo "Installing Python packages..."
pip3 install \
colout \
jc \
loguru \
requests \
scapy \
