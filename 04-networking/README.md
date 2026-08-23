# 🌐 Core Assignment — Domain + EC2 + DNS

## 🎯 Objective

This project demonstrates the fundamental concepts of **IP addresses, DNS, routing, ports, cloud hosting, and web servers**.

The objective was to:

- 🌍 Configure a custom domain
- ☁️ Launch an AWS EC2 instance
- 🖥️ Install and run NGINX
- 🔐 Configure the EC2 Security Group
- 🔗 Connect the domain to the EC2 instance using DNS
- 🌐 Access the NGINX landing page through the custom domain

---

## 🏗️ Architecture

```text
                 🌐 Custom Domain
                        │
                        │ DNS A Record
                        ▼
              ┌─────────────────┐
              │   EC2 Public    │
              │   IPv4 Address  │
              └────────┬────────┘
                       │
                       │ HTTP :80
                       ▼
              ┌─────────────────┐
              │      NGINX      │
              │   Web Server    │
              └────────┬────────┘
                       │
                       ▼
             🖥️ NGINX Landing Page



🔄 Request Flow
👤 User
   │
   │ 🌐 mydomain.com
   ▼
🔗 DNS
   │
   │ Resolves domain to EC2 IP
   ▼
☁️ EC2 Instance
   │
   │ 🔓 Port 80
   ▼
🌐 NGINX
   │
   ▼
🎉 NGINX Default Landing Page

The NGINX default landing page successfully loaded through my custom domain
.
📸 Screenshots
Screenshots demonstrating the completed deployment in the NGINXimages folder

🕹️Commands I've Used:
CD - So that I can change the permissions of the .pem file by doing chmod 400 "file_name".pm

sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx - this tells our EC2 to install NGINX, to start it automatically and to start it now

sudo systemct1 status nginx - this checks that it is up and running

I successfully:
🌍 Configured a custom domain
☁️ Launched an AWS EC2 instance
🐧 Used Amazon Linux
🔑 Connected to the server using SSH
📦 Installed NGINX
▶️ Enabled and started the NGINX service
🔐 Configured the EC2 Security Group
🔗 Created a DNS A record
🌐 Pointed the domain to the EC2 public IPv4 address
🧪 Tested the deployment through a web browser
🎉 Successfully displayed the NGINX landing page through my custom domain
