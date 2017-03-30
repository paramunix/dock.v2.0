#Install-macOSX.sh
# Installs Ansible on the Mac Host.
#Installs the VM using Vagrant off of VirtualBox.
#Calls for Provisioning of the VM.
#(Need to install virtualbox extension packs of the same version)#
#
#Creater: Param Raina
#
#
#!/bin/bash

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
ts=`date +%F-%R`

easy_install pip
pip install ansible
pip install vagrant
pip install virtualbox

## Installing the vagrant Guest VM ###

wget https://atlas.hashicorp.com/centos/boxes/7/versions/1702.01/providers/virtualbox.box
vagrant up virtualbox.box --provider virtualbox

function check {
	vagrant status|grep -i running 
	chk1=$?
	vagrant ssh -c 'uname -a'  default
	chk2=$?
	if [[ chk1 -eq 0 ] && [ $chk2 -eq 0 ]]
		then
			vagrant provision
		else
  			sleep 30

	fi
}

check

echo " Check the port mapping to connect to Nginx Site"
echo "------------------------------"

vagrant ssh -c 'docker ps'


echo "----------------------"
echo


