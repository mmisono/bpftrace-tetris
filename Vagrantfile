# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/eoan64'
  config.vm.provider 'virtualbox' do |v|
    # Work around https://bugs.launchpad.net/cloud-images/+bug/1829625
    v.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    v.customize ["modifyvm", :id, "--uartmode1", "file", "./ttyS0.log"]
  end
  config.vm.provision 'shell',
                      inline: '/bin/bash /vagrant/vagrant/provision.sh'

  config.vm.provision 'shell', inline: 'echo "Vagrant is now provisioned - run \"vagrant ssh\" to access the vm"'
end
