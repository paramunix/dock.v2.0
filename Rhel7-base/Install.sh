#!/usr/bin/bash

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
ts=`date +%F-%R`
#Ensuring server has the desired repos
#Ensuring server has the desired repos

tar cvf /etc/repos.$ts.tar /etc/yum.repos.d/
tar xvf $PWD/repos-dock.tar -C  /etc/yum.repos.d/
sleep 5


echo "### Updating packages list ###"
yum -y update

echo "### Installing packages ###"
yum -y install   dkms VirtualBox-5.1 vagrant

echo "### Spin the vagrant box ###"

#mkdir -p /var/vag-nodes/centos7

#vagrant init   /var/vag-nodes/centos7/centos7 https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box

yum install  epel-release 
yum -y update
yum install -y	python-devel openssl python-pip ansible
yum update
echo
echo "### Packages Installed .... ###"
echo

rpm -qa|egrep -i "virtualbox|vagrant|ansible" 

echo "----------------------"
echo


