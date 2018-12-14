# -*- mode: ruby -*-
# vi: set ft=ruby :


#vagrant plugin install vagrant-vbguest

require File.dirname(__FILE__)+"./ruby_src/dependency_manager"
check_plugins ["vagrant-vbguest"]

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  config.vbguest.auto_update = false
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/xenial64"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
	config.vm.network "forwarded_port", guest: 80, host: 9999
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
   config.vm.synced_folder "document-builder", "/home/vagrant/document-builder", type: "virtualbox", "rsync__auto":true, "rsync__verbose": true
   config.vm.synced_folder '', '/vagrant', disabled: true
   #config.vbguest.auto_update = false
   #config.vbguest.no_remote = true
  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "sphinx-designer"
  end
  # View the documentation for the provider you are using for more
  # information on available options.
	
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision :shell, path: "bootstrap.sh"

  #host_mount_dir = "/home/david/vagrant-home"
  #config.trigger.after :up do
  #    # mkake the dir if it doesnt exist
  #    run "mkdir -p " + host_mount_dir
  #    # we need the users pass to mount (make sure you are a sudoer!)'
  #    puts "Please enter your password so that we can run mount"
  #    run "sudo mount -t nfs -o port=8049 localhost:/home/vagrant #{host_mount_dir}"
  #end

  # before halting, unmount the share
  #config.trigger.before :halt do
  #   # we need the users pass again
  #    puts "Please enter your password so that we can run mount"
  #    run "sudo umount #{host_mount_dir}"
  #end
end
