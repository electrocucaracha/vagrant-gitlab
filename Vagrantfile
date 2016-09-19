# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", path: "postinstall.sh"
  config.vm.network :private_network, ip: '192.168.50.4'
  config.vm.network :forwarded_port, guest: 80, host: 8880
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 2 * 1024]
  end
end