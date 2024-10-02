#!/bin/bash

echo "Initilize application installation:\n"

# Update package lists
sudo dnf update -y

# Install applications
sudo dnf install -y \
    vim \
    neovim \
    git \
    tmux \
    htop \
    curl \
    wget \
    zsh \
    firefox \
    nodejs \
    npm \
    python3 \
    python3-pip \
    gnome-tweaks \
    mysql-community \
    mysql-server \

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code -y

# enable mysql
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service

# fix mysqlclient bug in django projects
sudo dnf install python python-devel mysql-devel redhat-rpm-config gcc

# fix git asking for github password everytime
git config credential.helper store

echo "Applications installed successfully"
