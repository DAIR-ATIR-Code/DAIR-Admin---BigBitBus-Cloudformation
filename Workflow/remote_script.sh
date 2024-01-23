#!/bin/bash
RELEASENAME="1.0.4"
sudo apt-get update -y && sudo apt-get upgrade -y

echo "microk8s-install"
curl -L https://raw.githubusercontent.com/BigBitBusInc/kubernetes-automation-toolkit/$RELEASENAME/code/local-kubernetes-cluster-installation/install-microk8s-on-ubuntu.sh | bash | tee /var/log/bigbitbus-microk8s-install.log

echo "application-code-install"
curl -L -s -k https://raw.githubusercontent.com/DAIR-ATIR-Code/DAIR-Admin---BigBitBus-Cloudformation/main/install-app-stack.sh | bash -s $RELEASENAME | tee /var/log/bigbitbus-kat-application-code-install.log
