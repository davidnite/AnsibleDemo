#!/bin/bash

ansible-playbook 0-prereq.yml --extra-vars "@vars.yml"
ansible-playbook 0-vmdeploy.yml --extra-vars "@vars.yml"
ansible-playbook 0-appinstall.yml --extra-vars "@vars.yml"