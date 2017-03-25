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
	check vagrant status|grep -i running
	if [ $? -eq  0 ]
		then
  			vagrant provision
		else
  			sleep 10
	fi
}

check

echo "----------------------"
echo


