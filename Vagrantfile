Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.50.10"
  # config.vm.network "public_network"

  #config.vm.synced_folder "", "/vagrant_data"
  config.vm.provision :shell, path: "shell/start.sh"
end
