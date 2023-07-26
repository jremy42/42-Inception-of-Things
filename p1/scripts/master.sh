#!/bin/bash


echo "[START] - launch instalation script"

echo "[1] -disable swap"
swapoff -a 

echo "[2] -install utils"

apt-get update
apt-get install -y apt-transport-https curl


#echo "[3] - install k3s"
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --node-ip 192.168.42.110" K3S_KUBECONFIG_MODE="644" sh -

#echo "[4] - create alias"

#echo "alias k='kubectl'" >> /etc/profile.d/00-aliases.sh

echo "server as been setup successfuly"
