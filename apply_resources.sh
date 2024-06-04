#!/bin/bash

# Get the build number from the Jenkins environment variable
BUILD_NUMBER=${BUILD_NUMBER}

# Switch to the appropriate directory
cd /var/lib/jenkins/workspace/Purdue_IGP/

# Apply the deployment YAML with build number
sudo -u ec2-user kubectl apply -f deployment.yml --namespace default

# Apply the pod YAML with build number
sudo -u ec2-user kubectl apply -f pod.yml --namespace default

# Apply the service YAML with build number
sudo -u ec2-user kubectl apply -f service.yml --namespace default
