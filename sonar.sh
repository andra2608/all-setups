#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip
unzip sonarqube-10.4.1.88267.zip
dnf install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-10.4.1.88267 -R
chmod 777 sonarqube-10.4.1.88267 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-10.4.1.88267/bin/linux-x84-64/sonar.sh start
#echo "user=admin & password=admin"
