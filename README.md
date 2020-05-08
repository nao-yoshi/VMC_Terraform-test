# SDDC deployment by Terraform
This repo is for building a test environment of Terraform for [VMware Cloud on AWS](https://cloud.vmware.com/vmc-aws/) (VMC) in your PC. If you have an account in [VMware Cloud](https://cloud.vmware.com/) organization, you can deploy your own SDDC very easily and quickly in your VMC. 

## Description
You can use APIs for management of VMC. VMC's customer can deply new SDDC platform in his/her organization of VMware Cloud using Terraform and a provider for VMC. For more detail, see [Terraform provider for VMware Cloud on AWS](https://github.com/vmware/terraform-provider-vmc). This is the easiest way to test its operation on your PC.

## Requirement
Before you try it, you need to install some software listed below in your PC.
- Git
- Virtual Box
- Vagrant

## Usage
You can deploy the test environment on your PC easily.
1. Clone this repo into your PC.
   ```
   $ git clone https://github.com/nao-yoshi/VMC_Terraform-test.git
   ```
2. Move to the directory of this repo **"/VMC_Terraform-test"**. Then execute a command listed below to build the test environment.
   ```
   $ cd VMC_Terraform-test
   $ vagrant up
   ```
4. 5 to 10 minutes later, a VM (CentOS) will be deployed on VirtualBox. **Terraform**, **Go** and **Terraform provider** will be installed on that VM.
5. Execute a command below to login to the CentOS.
   ```
   $ vagrant ssh
   ```
6. Follow the process listed in [Terraform provider for VMware Cloud on AWS](https://github.com/vmware/terraform-provider-vmc) to deploy SDDC on your VMC. 

## Clean up
You can remove all of the test environment from your PC.

1. Log off from VM (CentOS).
2. Execute a command below at the directory **"VMC_Terraform-test"** on your PC.
   ```
   $ vagrant destroy
   ```
3. All of the VMs running on VirualBox will be removed.

## Author
nao-yoshi
