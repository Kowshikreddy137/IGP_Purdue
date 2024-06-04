#!/bin/bash

# Get the build number from the Jenkins environment variable
BUILD_NUMBER=${BUILD_NUMBER}

# Switch to the appropriate directory
cd /var/lib/jenkins/workspace/Purdue_IGP/

# Substitute the build number in the YAML files
export BUILD_NUMBER
envsubst < deployment.yml | sudo -u ec2-user kubectl apply -f - --namespace default
envsubst < pod.yml | sudo -u ec2-user kubectl apply -f - --namespace default
envsubst < service.yml | sudo -u ec2-user kubectl apply -f - --namespace default
