#!/bin/bash

IP=$1
PASS=$2
echo "------------------------------ Start -------------------------------"
echo "SSH Key is Generating..."
bash -c echo "y" | ssh-keygen -P ''
echo "---------------------------------------------------------------------"
echo  "Copying the Public Key to $IP Using ssh-copy-id..."
sshpass -p "$PASS" ssh-copy-id -i ~/.ssh/id_rsa.pub -o StrictHostKeyChecking=no $IP
echo "---------------------------------------------------------------------"
echo "Writing The Remote IP to Hosts File..."
#sed -i /^#End.*/i\ $IP /etc/ansible/hosts
echo "------------------------------ End -------------------------------"

