# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision :shell, path: 'provision.sh'
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: [".git/", ".sass-cache/", ".vagrant/", "bower_components/", "node_modules/"]

  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = '~/.ssh/digitalocean'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"

    provider.client_id = 'CLIENT_ID'
    provider.api_key = 'API_KEY'
    provider.region = 'Singapore 1'
    provider.ssh_key_name = "SSH_KEY_NAME"
  end
end
