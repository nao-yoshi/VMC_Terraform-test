# Preparing Terraform environment in your PC
This repo is for building a demonstration environment of Terraform for VMware Cloud on AWS (VMC) in your PC. If you have an account in VMware Cloud organization, you can deploy a SDDC very easily and quickly in your VMC as a test. 

## Description
VMC is open its API for management. VMC's customer can deply new SDDC platform in his/her organization of VMware Cloud using Terraform and a provider for VMware Cloud on AWS. For more detail, see [Terraform provider for VMware Cloud on AWS](https://github.com/vmware/terraform-provider-vmc). This is the easiest way to test it with your PC.


## Requirement
Before you try it, you need to install some software listed below in your PC.
- Git
- Virtual Box


## Usage


## Clean up
You can remove all of the test environment from your PC.

1. Log off from VM(CentOS).
2. Execute a command listed below at the directory "Terraform".
```
$ vagrant destroy
```
3. Remove all of the software which were installed for this test.


## Author
nao-yoshi
