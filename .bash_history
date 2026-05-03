sudo apt update
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
curl http://localhost
sudo nano /var/www/html/index.html
sudo systemctl restart nginx
