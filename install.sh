#!/bin/bash
sudo apt update
sudo apt install -y openjdk-17-jre docker.io wget

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins

# Start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Allow Docker access for Jenkins
sudo usermod -aG docker jenkins
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart jenkins
