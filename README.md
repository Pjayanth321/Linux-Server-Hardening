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
   git clone https://github.com/yourusername/linux-server-hardening.git
   cd linux-server-hardening
   ```

2. Make the script executable:
   ```bash
   chmod +x harden.sh
   ```

3. Run the script with sudo:
   ```bash
   sudo ./harden.sh
   ```

4. Review the log file:
   ```bash
   cat harden.log
   ```

---

## 📸 Screenshots

🔹 **1. Script Execution (Automation Running)**  
<img src="Screenshots/script_run.png" width="700"/>

🔹 **2. SSH Configuration Hardened**  
<img src="Screenshots/sshd_config.png" width="700"/>

🔹 **3. UFW Firewall Enabled and Active**  
<img src="Screenshots/ufw_status.png" width="700"/>

🔹 **4. Fail2Ban Service Active for SSH Brute-Force Protection**  
<img src="Screenshots/fail2banstatus.png" width="700"/>

> More screenshots are available in the [`/Screenshots/`](Screenshots/) folder.

---

## 📂 Project Structure

| File / Folder     | Description |
|------------------|-------------|
| `README.md`       | Project overview and documentation |
| `harden.sh`       | Main automation script |
| `screenshots/`    | Screenshots of script output and results |

---

## 🔐 Security Goals

- Apply baseline hardening from CIS and OWASP recommendations  
- Lock down remote access  
- Minimize attack surface  
- Log all critical actions for review  

---

## 📌 Notes

- Tested on fresh Ubuntu 22.04 VM  
- Run the script only once per system unless otherwise modified  
- Ideal for learning Linux hardening automation  

---

## 📈 Future Improvements

- Add support for CentOS/Debian systems  
- Schedule cron job for periodic log audits  
- Integrate email alerts for critical events  
- Add rollback/restore support  

---

## 🙏 Credits

- CIS Benchmarks  
- OWASP Linux Hardening  
- Ubuntu Community Wiki  
- InfoSec Forums & Hardening Guides  
