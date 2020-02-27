# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
    if Vagrant.has_plugin?("vagrant-cachier")
      config.cache.scope = :box
    end
  config.vm.hostname = "terraform"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "private_network", ip: "192.168.100.193", virtualbox__intnet: "intnet"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "terraform"
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
  config.vm.provision :shell, path: "scripts/bootstrap.sh"
  config.vm.provision :shell, path: "scripts/terraform.sh"
end
