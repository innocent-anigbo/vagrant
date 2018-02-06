#!/bin/bash

wget --quiet https://github.com/kubernetes/kops/releases/download/1.7.0/kops-linux-amd64
chmod +x kops-linux-amd64
mv kops-linux-amd64 kops && mv kops /usr/bin/
wget --quiet https://storage.googleapis.com/kubernetes-release/release/v1.7.3/bin/linux/amd64/kubectl
chmod +x kubectl && mv kubectl /usr/bin/

apt-get update -y
apt-get install python-pip -y
pip install awscli

git clone https://github.com/wardviaene/kubernetes-course
