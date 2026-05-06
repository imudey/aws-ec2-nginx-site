# Personal Website Deployment (AWS EC2 + NGINX)

## Overview
This project demonstrates how I deployed a live website using AWS EC2 and NGINX, and connected it to a custom domain using Cloudflare.
<img width="1918" height="695" alt="image" src="https://github.com/user-attachments/assets/ffad1c46-a32e-4140-bd28-ad87bc3e5d9a" />

## What I Built
- A virtual server using AWS EC2
- Installed and configured NGINX as a web server
- Hosted a simple HTML webpage
- Connected a custom domain
- Configured DNS using Cloudflare

## Tech Stack
- AWS EC2
- NGINX
- Cloudflare (DNS)
- HTML

## Steps I Took

### 1. Launched EC2 Instance
- Selected Ubuntu Server
- Used t3.micro (free tier)
- Configured security group (ports 22, 80, 443)

### 2. Connected to Server
```bash
ssh -i my-key.pem ubuntu@<my-public-ip>
## Wont include my IP in this readme

3. Installed NGINX
sudo apt update
## heard it is best practise to run this before installing new software
sudo apt install nginx -y
## -y means yes to all prompts

4. Deployed Website
Edited /var/www/html/index.html
## This is the default directory served by NGINX
Added a simple HTML page
## used index.html as it is the main homepage file

5. Connected Domain
Bought domain via Cloudflare
## interesting note here, i was trying to buy a domain and would come against an error that would not allow me. After some research found out this is a common issue and to bypass it we should purchase a domain in incognito mode.
Created A record pointing to EC2 public IP
## Learned the difference between DNS-only and proxied mode

6. Troubleshooting
Encountered a Cloudflare 522 error (connection timeout between Cloudflare and EC2)
## Investigated DNS settings and proxy configuration
## Resolved the issue by adjusting Cloudflare proxy settings and ensuring correct server connectivity
## Gained understanding of how Cloudflare sits between users and the origin server
<img width="528" height="135" alt="Screenshot 2026-05-06 214257" src="https://github.com/user-attachments/assets/f8d78662-733d-4d1a-9656-bf3fb1951ff4" />





7. Future Improvements
Improve website design
Automate deployment



