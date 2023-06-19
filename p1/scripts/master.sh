#!/bin/bash


echo "[START] - install k3s"

echo "[1] -disable swap"
swapoff -a 

echo "[2] -install utils"

apt-get update --qq
apt-get install -y --qq apt-transport-https curl

# curl -sfL https://get.k3s.io  |  INSTALL_K3S_EXEC="agent --node-ip 192.168.42.111"\
# 	K3S_URL="https://192.168.42.110:6443"\
# 	K3S_TOKEN="713705"\
# 	K3S_KUBECONFIG_MODE="644" sh -