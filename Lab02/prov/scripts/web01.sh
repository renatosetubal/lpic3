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
alias status="systemctl status"
EOT
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCZhPh+3+PnsmE2d6bFONGvVeEQw4/pjLcctoSfIadfKluKqX0F3AkDaP0uygTnBTP1ONryB5ux+u4m+5JoDP4VOzkYL5F39Z1VEt1xOz7ebwPdp7BDO3uebvKAROvFONDTmD1B6jfE/XIZX3MioYe0tX5V8A3juxOLeOoYtAXmPSDxLiEeAcM+1neapUMDeKBnMwFbt07YVaBymX4tbGyvMDV6W4o+RhumKboPRi3lK0t3YMotCEDdzyKmO8aa4v2nJBYDW+ImfGu+etYAOGEbQ/WvATRzDF48tIvUOUixqpDCs2ebGeZEsOe2tNMmhtgagmfr/zCNZ9Zqx2++ennfkHi7+2tD9nEpYhmAxiQca2PIGlFR11rLJqE8J7yQGw9IDI305xfecuaeuHdwJ8pUJrqocBwaTtaLJI24KiuPHDsTLWm2Vdd32j9kgxoO5Xy6zWvWDvO9clmrrl4hoxXuS6zLQOxr19K+T+2QkoR86VG33T9DsjfhbvtXzOZtPSs= castle@Punisher
" >> /root/.ssh/authorized_keys
