# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = 'bagiq-dev-box'

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 9000, host: 9000

  config.vm.network "private_network", ip: "192.168.33.10"

  if ENV['SHARED_FOLDER']
    config.vm.synced_folder ENV['SHARED_FOLDER'], '/home/vagrant/code', nfs: ENV['USE_NFS']
  end

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.provision :shell, path: 'bootstrap-ruby.sh', keep_color: true, privileged: false
end
