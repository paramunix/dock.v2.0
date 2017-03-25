ANSIBLE-> VAGRANT -> DOCKER -> NGINX
-------------------------------------

------ WIP ------
------ WIP ------

The setup installs the required packages for RHEL7 to spin instances from VirtualBox using Vagrant. Provisioning manager for these guests is Ansible.
Thereafter, ansible playbooks are used to run a docker Nginx container inside the guest.

a) Install.sh 
	Installs Vagrant, VirtualBox and Ansible on the RHEL7  Host.


Installation
---------------------

1. Clone this repo on the local RHEL7 base OS.
2. Change to the directory and run Install.sh

