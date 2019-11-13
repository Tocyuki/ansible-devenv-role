# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder '../ansible-devenv-role', '/home/vagrant/ansible-devenv-role',
                          create: true, owner: 'vagrant', group: 'vagrant'

  config.vm.box = "bento/ubuntu-18.04"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/home/vagrant/ansible-devenv-role/tests/test-vagrant.yml"
    ansible.inventory_path = "/home/vagrant/ansible-devenv-role/tests/inventory"
    ansible.limit = 'localhost'
  end
end
