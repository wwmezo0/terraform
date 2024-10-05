#!/bin/bash

# Variables
TERRAFORM_VERSION="1.6.0"  # Change this to the desired version or use "latest"
TERRAFORM_ZIP="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
TERRAFORM_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/${TERRAFORM_ZIP}"

# Update the package list
echo "Updating package list..."
sudo apt update

# Install required packages
echo "Installing unzip..."
sudo apt install -y unzip

# Download Terraform
echo "Downloading Terraform version ${TERRAFORM_VERSION}..."
curl -LO $TERRAFORM_URL

# Unzip the downloaded file
echo "Unzipping Terraform..."
unzip $TERRAFORM_ZIP

# Move the binary to /usr/local/bin
echo "Installing Terraform..."
sudo mv terraform /usr/local/bin/

# Clean up
echo "Cleaning up..."
rm $TERRAFORM_ZIP

# Verify the installation
echo "Verifying Terraform installation..."
terraform -version

echo "Terraform installation completed!"
