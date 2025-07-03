#!/bin/bash

echo "[*] Updating and upgrading system..."
sudo apt update && sudo apt upgrade -y

echo "[*] Creating user 'secureadmin'..."
sudo adduser secureadmin
sudo usermod -aG sudo secureadmin

echo "[*] Hardening SSH configuration..."
sudo sed -i 's/^#Port 22/Port 2200/' /etc/ssh/sshd_config
sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
echo "AllowUsers secureadmin" | sudo tee -a /etc/ssh/sshd_config
sudo systemctl restart ssh

echo "[*] Installing and configuring UFW firewall..."
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 2200/tcp
sudo ufw enable

echo "[*] Installing and configuring Fail2ban..."
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "[*] Hardening complete!"
echo "Use SSH on port 2200 with user 'secureadmin' and key-based authentication."
