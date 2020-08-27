#!/bin/bash
sudo apt-get -y update

echo "Install Java JDK 8"
sudo apt-get remove -y java
sudo apt-get install -y java-1.8.0-openjdk

echo "Install git"
sudo apt-get install -y git

echo "Install Docker engine"
sudo apt-get update -y
sudo apt-get install docker.io -y
#sudo usermod -a -G docker jenkins
#sudo service docker start
sudo chkconfig docker on

echo "Install Jenkins"
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo apt-get install -y jenkins
sudo usermod -a -G docker jenkins
sudo chkconfig jenkins on
sudo service docker start
sudo service jenkins start


