ANSIBLE-> VAGRANT -> DOCKER -> NGINX
-------------------------------------

------ WIP ------ ------ WIP ------

Base OS: MacOSX Sierra

The setup installs the required packages for MacOSX to spin instances from VirtualBox using Vagrant.
Provisioning manager for these guests is Ansible.
Thereafter, ansible playbooks are used to run a docker Nginx container inside the guest.

a) Need to have Vagrant and Virtualbox installed.
	https://www.vagrantup.com/downloads.html
	https://www.virtualbox.org/wiki/Downloads
	(Need to install virtualbox extension packs of the same version)

	Clone this repo, cd to the directory and run Install-macOSX.sh


b) Install-macOSX.sh
	i) Installs Ansible on the Mac Host.
	ii) Installs the VM using Vagrant off of VirtualBox.
	iii) Calls for Provisioning of the VM.


.

