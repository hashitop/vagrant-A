# Vagrant with config.vm

## Vagrant Cloud

### Location of boxes

The box is located at `hashitop/bananas3`

> `config.vm.box = "hashitop/bananas3"`

### Release

In order to use the box in Vagrant Cloud, it requires the box to be released.
The box in this sample is using release version `0.0.1`

> `config.vm.box_version = "0.0.1"`

### Hostname

The hostname can be configured using `onfig.vm.hostname` in `Vagrantfile`, in this case, it is set to `bananas3`

> `config.vm.hostname = "bananas3"`

### IP Address

The IP address can be configured using `config.vm.network` with alias of network adapter, `private_network` for this sample

> `config.vm.network "private_network", ip: "192.168.56.56"`

### Forwarded port

Port forwarding can be configured using `config.vm.network` with `forwarded_port`

> `config.vm.network "forwarded_port", guest: 80, host: 8080`

### Provision

There are a number of Provisioners available in Vagrant, we use `shell` Provisioner to get packages installed.
It supports both inline script and external file.

**External Script**

> `config.vm.provision "shell", path: "scripts/provision.sh"`

**Inline Script**
> `config.vm.provision "shell", inline: $provision_script`
