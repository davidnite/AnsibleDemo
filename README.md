# Ansible Demo Environment

## Set up your ansible host

1. Create an Azure Service Principal
2. Install the prerequisite software
    ``` yum -y install epel-release deltarpm
        yum -y install policycoreutils-python libsemanage-devel gcc gcc-c++ kernel-devel python-devel libxslt-devel libffi-devel openssl-devel python2-pip iptables-services git
        pip install --upgrade pip
        pip install ansible==2.7.0rc2
        pip install ansible[azure]```
3. Setup authentication (https://docs.ansible.com/ansible/2.6/scenario_guides/guide_azure.html)

## Run the playbooks
 
1. Clone the repo
2. Run deploy.sh