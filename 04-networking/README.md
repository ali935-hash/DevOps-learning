🌐 Core Assignment — Domain + EC2 + DNS

🎯 Objective
This project demonstrates the fundamental concepts of IP addresses, DNS, routing, ports, cloud hosting, and web servers.

The objective was to:
🌍 Configure a custom domain
☁️ Launch an AWS EC2 instance
🖥️ Install and run NGINX
🔐 Configure the EC2 Security Group
🔗 Connect the domain to the EC2 instance using DNS
🌐 Access the NGINX landing page through the custom domain

🏗️ Architecture
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

🛠️ Technologies Used
Technology	Purpose
☁️ AWS EC2	Cloud virtual server
🐧 Amazon Linux	Operating system
🌐 NGINX	Web server
🔗 DNS	Domain name resolution
📍 A Record	Maps domain to IPv4 address
🌍 HTTP / Port 80	Web traffic
🔐 Security Groups	Controls inbound/outbound traffic
💻 SSH	Remote access to EC2


1. 🌍 Domain Configuration
I configured a custom domain for the project.
The domain was connected to the EC2 instance using a DNS A record.

Example:
mydomain.com → EC2 Public IPv4 Address

An A record maps a human-readable domain name to an IPv4 address.
This means users don't need to remember the server's IP address — they can simply visit the domain.

2. ☁️ EC2 Instance
I launched an Amazon EC2 instance using Amazon Linux.
The EC2 instance acts as the server that hosts the NGINX web server.

🔐 Security Group
The EC2 Security Group was configured to allow HTTP traffic on port 80.

Protocol	Port	Purpose
🔐 SSH	22	Remote administration
🌐 HTTP	80	Web traffic

Port 80 is required so that visitors can access the NGINX web server through a browser.

3. 🔑 Connecting to EC2
I connected to the EC2 instance using SSH.
SSH allows me to remotely access and manage the Linux server from my local computer.
Once connected, I could run commands directly on the EC2 instance.

4. 📦 Installing NGINX
I installed NGINX using:

sudo yum install -y nginx

🧠 Command breakdown
sudo → 👑 Runs the command with administrator privileges
yum → 📦 Linux package manager
install → ⬇️ Installs a package
-y → ✅ Automatically confirms the installation
nginx → 🌐 The NGINX web server package

5. ▶️ Starting NGINX
I configured NGINX to automatically start whenever the EC2 instance boots:

sudo systemctl enable nginx

I then started NGINX:
sudo systemctl start nginx

I verified that NGINX was running with:
sudo systemctl status nginx

The expected result was:
Active: active (running)
✅ This confirmed that the NGINX web server was running successfully.

6. 🔗 DNS Configuration
I created an A record for the custom domain.
The record points the domain to the public IPv4 address of the EC2 instance.

Example:
Type:  A
Host:  @
Value: <EC2 Public IPv4 Address>

The DNS configuration effectively tells the internet:
🗺️ "When someone requests this domain, send them to this IP address."

7. 🌐 Testing
After configuring the DNS record and allowing time for DNS propagation, I tested the deployment by visiting my domain in a web browser.

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


🧠 Key Concepts Learned
🌍 IP Addresses
An EC2 instance can have a public IPv4 address that allows it to be reached from the internet.

🔗 DNS
DNS translates human-readable domain names into IP addresses.
mydomain.com
     ↓
13.xxx.xxx.xxx

📍 A Records
An A record maps a domain name to an IPv4 address.
mydomain.com → EC2 Public IPv4

🚪 Ports
The NGINX web server listens for HTTP traffic on port 80.
The EC2 Security Group must allow inbound traffic on this port for the website to be accessible.

🌐 NGINX
NGINX is the web server running on the EC2 instance. It receives HTTP requests and responds with the requested web content.

☁️ Cloud Hosting
AWS EC2 provides the infrastructure required to run the web server without needing to own or manage physical hardware.

🏆 Result
The assignment was successfully completed! 🎉

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

🔑 What This Project Demonstrates
The complete journey from domain name to web page:
🌍 Domain
    ↓
🔗 DNS
    ↓
📍 IP Address
    ↓
☁️ AWS EC2
    ↓
🚪 Port 80
    ↓
🌐 NGINX
    ↓
🖥️ Web Page
Domain → DNS → IP → EC2 → Port 80 → NGINX → Website 🚀