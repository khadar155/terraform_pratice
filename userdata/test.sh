#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "<h1>welcome to domain</h1>" > /var/www/html/index.html

#terrafrom
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

#git
yum install git -y
