ANSIBLE-> VAGRANT -> VirtualBOX -> CentOS -> DOCKER -> NGINX
-----------------------------------------------------------------

Base OS: MacOSX Sierra

The setup installs the required packages for MacOSX to spin instances from VirtualBox using Vagrant.
Provisioning manager for these guests is Ansible.
Thereafter, ansible playbooks are used to run a docker Nginx container inside the guest.


        Clone this repo, cd to the directory and run Install-macOSX.sh


a)   Install-macOSX.sh
        i) Installs Ansible on the Mac Host.
        ii) Installs the VM using Vagrant off of VirtualBox.
        iii) Calls for Provisioning of the VM.

        (Need to install virtualbox extension packs of the same version)



b)   Vagrantfile is configured to provision the VM using Ansible.

c)   Ansible:
        i) Installs Docker on the vm.
        ii) Creates an alpine-linux+NginX container with configuration shared from host vm.


PLEASE NOTE: Docker does not support 32bit host.
             Virtualbox does not support 64 bit guest running on 64bit VM.
             If you're thinking of using Windows as base OS (Ansible support ?)
             Attempts to use a Linux VM as the Base OS failed. Hence, the Mac.
 

.

