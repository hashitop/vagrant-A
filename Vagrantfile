$provision_script = <<-SCRIPT

apt-get update
apt-get install -y nginx
export DEBIAN_FRONTEND="noninteractive"
 
#Input root password of MySQL server for silent mode installation
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
 
#Install MySQL server
apt install -y mysql-server

SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "hashitop/bananas3"
  config.vm.box_version = "0.0.1"
  config.vm.hostname = "bananas3"
  config.vm.network "private_network", ip: "192.168.56.56"
  config.vm.network "forwarded_port", guest: 80, host: 8080
#  config.vm.provision "shell", path: "scripts/provision.sh"
  config.vm.provision "shell", inline: $provision_script

end
