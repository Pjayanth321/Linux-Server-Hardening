# 🔐 Linux Server Hardening + Automation

This project demonstrates how to **automate basic Linux server hardening** using a Bash script (`harden.sh`). It's designed for beginners who want to learn how to secure a Linux system and showcase automation skills in their portfolio.

---

## 🚀 Project Overview

The goal is to **secure a Linux Ubuntu server** by automating:

- System updates & upgrades
- Creating a secure non-root admin user
- Hardening the SSH service
- Enabling and configuring a firewall (UFW)
- Protecting SSH against brute-force attacks with Fail2Ban
- Enabling automatic security updates

This project is **ideal for freshers** aiming to demonstrate basic DevSecOps awareness and scripting ability.

---

## 🛠️ Features Implemented

| Feature                  | Description                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| 🔧 System Update         | Automatically updates & upgrades packages                                   |
| 👤 User Management       | Creates a `secureadmin` user with sudo privileges                           |
| 🔐 SSH Hardening         | Changes default port, disables root login, enforces key authentication       |
| 🔥 UFW Firewall          | Denies all incoming traffic except SSH (port 2200)                          |
| 🛡️ Fail2Ban Protection   | Blocks repeated failed SSH login attempts                                    |
| 🔄 Auto Security Updates | Enables unattended upgrades for security patches                           |

---

## 📂 Folder Structure

Linux-Server-Hardening-Project/
│
├── harden.sh # Bash script that performs all hardening steps
├── README.md # Project documentation (this file)
└── screenshots/ # Folder containing output and verification screenshots
├── sshd_config.png
├── ufw_status.png
├── fail2ban_status.png
└── script_run.png

---

## 📸 Screenshots

| Screenshot               | Description                                 |
|--------------------------|---------------------------------------------|
| `sshd_config.png`        | Hardened SSH config file                    |
| `ufw_status.png`         | UFW firewall status showing port 2200 open  |
| `fail2ban_status.png`    | Fail2Ban jail showing active monitoring     |
| `script_run.png`         | Output of `harden.sh` automation script     |

> 💡 Screenshots are stored in the `screenshots/` folder.

---

## 🧪 Usage

1. **Make the script executable**:
   ```bash
   chmod +x harden.sh
Run with root privileges:

bash
Copy
Edit
sudo ./harden.sh
Login with your new user:

SSH Port: 2200

Username: secureadmin

Authentication: SSH key only

✅ Requirements
Ubuntu 22.04 LTS (or compatible)

SSH key pair configured

Internet access (for package updates)

🎓 Learning Outcomes
Linux system administration basics

Automating security tasks with bash

Firewall configuration using UFW

SSH security practices

Using Fail2Ban for intrusion prevention

👨‍💻 Author
Jayanth
