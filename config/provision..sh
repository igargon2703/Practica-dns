#!/usr/bin/env bash
set -e

echo "=== 1. Instalación de paquetes ==="
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y bind9 bind9utils bind9-doc

echo "=== 2. Configuración IPv4 en BIND ==="
sed -i 's/OPTIONS=.*/OPTIONS="-u bind -4"/' /etc/default/named

echo "=== 3. Copia de archivos de configuración ==="
cp /vagrant/files/named.conf.options /etc/bind/named.conf.options
cp /vagrant/files/named.conf.local /etc/bind/named.conf.local
cp /vagrant/files/ignacio.test.dns /var/lib/bind/ignacio.test.dns
cp /vagrant/files/ignacio.test.rev /var/lib/bind/ignacio.test.rev

chown -R bind:bind /etc/bind /var/lib/bind

echo "=== 4. Reiniciar servicio DNS ==="
systemctl restart named
systemctl enable named