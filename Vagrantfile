Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "2048",
      "--cpus", "1"
    ]
  end
  config.vm.network "forwarded_port", guest: 4040, host: 4040
  config.vm.network "private_network", ip: "192.168.50.10"
  # config.vm.network "public_network"

  config.vm.synced_folder "", "/vagrant", :nfs => true
  config.vm.provision :shell, path: "shell/start.sh"
  config.vm.provision :shell, path: "shell/nginx.sh"
  config.vm.provision :shell, path: "shell/mysql.sh"
  config.vm.provision :shell, path: "shell/webapp.sh"
  config.vm.provision :shell, path: "shell/webhooker.sh"
  config.vm.provision :shell, path: "shell/ngrok.sh"
end
