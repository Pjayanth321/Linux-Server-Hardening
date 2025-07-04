# 🛡️ Linux Server Hardening + Automation

This project automates the hardening of a Linux server using a Bash script. It is ideal for beginners, SOC aspirants, and students who want to secure a Linux environment quickly and effectively using simple automation.

The script applies real-world best practices used in system hardening and logs all actions for transparency.

---

## 📁 Project Overview

- **Operating System**: Ubuntu Server 22.04 LTS  
- **Script Language**: Bash  
- **Objective**: Automate the security hardening of a fresh Linux server  
- **Key Features**: SSH lockdown, firewall setup, user restrictions, file permissions, and audit logging

---

## ⚙️ Features Implemented

| Feature             | Description |
|---------------------|-------------|
| 🔐 SSH Hardening     | Disable root login, change SSH port, enforce key-only authentication |
| 🔥 Firewall (UFW)    | Allow only necessary ports, deny all others |
| 👥 User Management   | Remove unused users, enforce limited privilege |
| 🧾 Audit Logging     | Enable auditd for logging user activities |
| 🔒 File Permissions  | Secure sensitive files like `/etc/shadow` and `/etc/passwd` |
| 🧹 Cleanup           | Remove unnecessary packages and services |

---

## 🛠️ How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/Pjayanth321/linux-server-hardening.git
   cd linux-server-hardening
Make the script executable:

bash
Copy
Edit
chmod +x harden.sh
Run the script with sudo:

bash
Copy
Edit
sudo ./harden.sh
Review the log file:

matlab
Copy
Edit
cat harden.log
📸 Screenshots
🔹 1. Script Execution Preview
<img src="screenshots/script_run.png" width="700"/>

🔹 2. SSH Root Login Disabled
<img src="screenshots/ssh_config.png" width="700"/>

🔹 3. UFW Firewall Enabled
<img src="screenshots/ufw_status.png" width="700"/>

More screenshots available in the /screenshots/ folder.

📂 Project Structure
File / Folder	Description
README.md	Project overview and documentation
harden.sh	Main automation script
screenshots/	Screenshots of script output and results

🔐 Security Goals
Apply baseline hardening from CIS and OWASP recommendations

Lock down remote access

Minimize attack surface

Log all critical actions for review

📌 Notes
Tested on fresh Ubuntu 22.04 VM

Run the script only once per system unless otherwise modified

Ideal for learning Linux hardening automation

📈 Future Improvements
Add support for CentOS/Debian systems

Schedule cron job for periodic log audits

Integrate email alerts for critical events

Add rollback/restore support

🙏 Credits
CIS Benchmarks

OWASP Linux Hardening

Ubuntu Community Wiki

InfoSec Forums & Hardening Guides

