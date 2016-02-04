# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "LAMP"
  # config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.box_url = "http://dl.dropbox.com/s/n5h6sw6y7yggi78/Ubuntu_12.04_LAMP_last.box"

  config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.network :forwarded_port, host: 33060, guest: 3306

  config.vm.provision :hostsupdate, run: 'always' do |host|
    host.hostname = 'localhost'
    host.manage_guest = true
    host.manage_host = true
    host.aliases = [
        'local.ontris-2.com',
        'local.dev.ontris.com',
        'local.prod.ontris.com',
        'local.nerds.dk',
        'dashboard.local.nerds.dk',
        'local.marketplace.nerds',
        'localhost',
        'local.oscommerce.com'
    ]
    # host.files = [
        # 'config/hosts.json'
    # ]
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.synced_folder "../PHP", "/var/www",
    create: true,
    disabled: false,
    mount_options: ['dmode=777', 'fmode=776']
end
