#!/bin/bash

# Switch to the appropriate directory
cd /var/lib/jenkins/workspace/Purdue_IGP/

# Apply the deployment YAML
sudo -u ec2-user kubectl apply -f deployment.yml --namespace default

# Apply the pod YAML
sudo -u ec2-user kubectl apply -f pod.yml --namespace default

# Apply the service YAML
sudo -u ec2-user kubectl apply -f service.yml --namespace default
