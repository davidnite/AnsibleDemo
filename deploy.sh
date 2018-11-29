#!/bin/bash

ansible-playbook 0-prereq.yml --extra-vars "@vars.yml"
ansible-playbook 1-vmdeploy.yml --extra-vars "@vars.yml"
ansible-playbook 2-appinstall.yml --extra-vars "@vars.yml"