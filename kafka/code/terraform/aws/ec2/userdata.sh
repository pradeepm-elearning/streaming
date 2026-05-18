#!/bin/bash
yum update -y
yum upgrade -y
dnf upgrade --releasever=2023.6.20250218 -y
yum install java-11 -y
timedatectl set-timezone Asia/Kolkata
useradd kafkauser
mkdir /opt/kafka
wget -O /opt/kafka/kafka_2.13-4.0.1.tgz "https://dlcdn.apache.org/kafka/4.0.1/kafka_2.13-4.0.1.tgz"
tar -xvzf /opt/kafka/kafka_2.13-4.0.1.tgz -C /opt/kafka/
chown -R kafkauser:kafkauser /opt/kafka/
su - kafkauser
echo "PATH=\"$PATH:/opt/kafka/kafka_2.13-4.0.1/bin\"" >> /home/kafkauser/.bashrc
