#!/usr/bin/env bash

echo "Apache provisioning start ..."
apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant/dist /var/www
echo "Apache provisioning end ..."
