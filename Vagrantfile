# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :zabbix_server do |zabbix_vagrant|
    zabbix_vagrant.vm.box = "ubuntu/xenial64"
    zabbix_vagrant.vm.hostname = "zabbixvagrant"
    zabbix_vagrant.vm.network "private_network", ip: "10.0.0.100"
    zabbix_vagrant.vm.network "public_network"

    zabbix_vagrant.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
    end

    zabbix_vagrant.vm.provision :shell, path: "bootstrap-zabbix-server.sh"
  end
end
