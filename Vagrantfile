# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "LAMP-32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.network :forwarded_port, host: 33060, guest: 3306

  config.vm.provision :hostsupdate, run: 'always' do |host|
    host.hostname = 'localhost'
    host.manage_guest = true
    host.manage_host = true
    host.aliases = [
        'local.ontris-2.com',
        'local.dev.ontris.com'
    ]
    # host.files = [
        # 'config/hosts.json'
    # ]
  end

  config.vm.synced_folder "../", "/var/www/",
    create: true,
    disabled: false,
    # id: "vagrant-root",
    # owner: "vagrant",
    # owner: "www-data",
    # group: "vagrant",
    mount_options: ['dmode=777', 'fmode=776']
end
