#!/bin/bash
ssh_key=$HOME/.ssh/id_rsa
if [ -e "$ssh_key" ]; then
    echo "ssh key already exists"
else 
    echo "ssh key does not exist"
    echo "creating ssh key"
    ssh-keygen -t rsa -q -P "" -f $HOME/.ssh/id_rsa
fi
ansible-playbook 0-prereq.yml --extra-vars "@vars.yml"
ansible-playbook 1-vmdeploy.yml --extra-vars "@vars.yml"
ansible-playbook 2-appinstall.yml --extra-vars "@vars.yml"