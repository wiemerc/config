#!/bin/bash

set -o errexit

echo "Installing git and pip..."
sudo dnf install -yq git python3-pip

echo "Installing Ansible..."
pip3 install ansible

echo "Cloning config repository..."
git clone https://github.com/wiemerc/config.git

echo "Running Ansible playbook..."
cd config/ansible
~/.local/bin/ansible-playbook -i inventory.ini --limit mvhs1 setup.yml
