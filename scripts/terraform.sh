#!/bin/bash

## Install wget unzip go ##
echo "========================================================"
echo "start installation wget, unzip and go....."
echo "========================================================"
sudo yum install -y epel-release
sudo yum -y install wget unzip go
sudo mkdir /usr/local/go
echo "GOPATH=/usr/local/go" >> /home/vagrant/.bash_profile
echo "export GOPATH" >> /home/vagrant/.bash_profile
sudo mkdir /usr/local/go/bin pkg src


## Install Terraform
echo "========================================================"
echo "start installation Terraform....."
echo "========================================================"
sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
sudo unzip ./terraform_0.12.2_linux_amd64.zip -d /usr/local/bin/
echo "========================================================"
echo " Terraform Installed "
echo "========================================================"


## Build the Provider
GOPATH="/usr/local/go"
sudo mkdir -p /usr/local/go/src/github.com/provider
cd /usr/local/go/src/github.com/provider
sudo git clone https://github.com/vmware/terraform-provider-vmc.git
cd ./terraform-provider-vmc
echo "========================================================"
echo "Please wait for a while. It takes few minutes..."
sudo go get
sudo go build -o terraform-provider-vmc
echo "========================================================"
echo "========================================================"
