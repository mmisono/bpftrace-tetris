# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/focal64"
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
end
