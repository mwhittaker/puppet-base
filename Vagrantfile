# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box            = "ubuntu/trusty64"
    config.ssh.forward_x11   = true
    config.vm.hostname       = "vm"
    config.ssh.forward_agent = true
    config.vm.network "forwarded_port", guest: 4000, host: 4000

    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file  = "site.pp"
        puppet.module_path    = "puppet/modules"
        puppet.options        = ["--debug"]
    end
end
