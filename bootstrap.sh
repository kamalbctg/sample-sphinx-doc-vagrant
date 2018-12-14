#!/usr/bin/env bash

echo '------------Provision Start-----------'
echo '1 ==>> Getting Linux Updates'
apt-get update

echo '2 ==>> Installing Apache'
apt-get install -y apache2
if ! [ -L /var/www ]; then
    rm -rf /var/www
	ln -fs /home/vagrant/document-builder/build /var/www
fi


echo '3 ==>> Installing python modules'
apt-get -y install python-sphinx
apt-get -y install make
apt-get -y install make-guile
apt-get -y install python-pip

pip install sphinxcontrib-plantuml

#apt-get install -y nfs-kernel-server nfs-common
#host_ip="$(netstat -rn | grep "^0.0.0.0 " | cut -d " " -f10)"
#echo "/home/vagrant       $host_ip(rw,sync,no_subtree_check)" > /etc/exports
#exportfs -a
echo '------------Provision End-----------'