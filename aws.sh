#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install required packages
echo "Installing Python and pip..."
sudo apt install -y python3 python3-pip

# Install AWS CLI using pip
echo "Installing AWS CLI..."
pip3 install awscli --upgrade --user

# Add the AWS CLI to the PATH
echo "Adding AWS CLI to PATH..."
echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Verify the installation
echo "Verifying AWS CLI installation..."
aws --version

echo "AWS CLI installation completed!"
