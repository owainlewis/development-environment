$script = <<SCRIPT
sudo locale-gen "en_US.UTF-8"
sudo dpkg-reconfigure locales
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
echo LC_ALL=en_US.UTF-8 >> /etc/environment
echo LANG=en_US.UTF-8 >> etc/environment

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y open-vm-tools build-essential git i3 xorg
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"

  config.vm.provision "shell", inline: $script

  config.vm.provider :vmware_fusion do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "2"
    v.gui = true
  end
end
