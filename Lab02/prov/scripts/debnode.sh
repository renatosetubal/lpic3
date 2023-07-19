#!/usr/bin/bash
#apt-get update
apt install ansible -y
apt install htop -y
apt install net-tools -y
cat  <<EOT >> /etc/hosts
    192.168.0.200 debnode
    192.168.0.201 web01
    192.168.0.202 bd01
EOT

cat  <<EOT >> /etc/profile
alias rm-chave="ssh-keygen -f '/root/.ssh/known_hosts' -R"
alias ssh="ssh -o StrictHostKeyChecking=no"
EOT


