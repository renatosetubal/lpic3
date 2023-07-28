#!/usr/bin/bash
#apt-get update
apt install htop -y
apt install net-tools -y
apt install apache2 -y

cat  <<EOT >> /etc/profile
alias rm-chave="ssh-keygen -f '/root/.ssh/known_hosts' -R"
alias ssh="ssh -o StrictHostKeyChecking=no"
alias sy="systemctl"
alias start="systemctl start"
alias stop="systemctl stop"
alias restart="systemctl restart"
alias enable="systemctl enable --now"
alias disable="systemctl disable --now"
alias install="apt install -y"
EOT
# echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDHqtEKdtpTpsL6XwM8waleiBMfmgSVEg1LssrEJ9szTdG1a9cV3iNaVkWPD9V5vWhOep3p/1oIBtOHU1CqfCROEK9/e93ujYAK5ykWKd2sYKSiGh4pmdMX3yR8ED8Eb2Hqk1qweMZo9FRLkcCEzmY54JkHJw2Qo9lPM6hjgPPgWOhVuXy5l16pw5wooJ5HkfKMTTP8rIZF6uMfGFnkYidaRyl6r8P7T97Zd2WW7CpxBT3Sc+QRysS2514K9k3XUsz3C4PwsDpp3HPOahN3Xz9HuaEzCa9TKFz0NKJJ34oTowIjseIgCnYqEPntKGJLcLDquZhAmEJ0Z15jt6Al0Mh 
# " > /root/.ssh/authorized_keys
