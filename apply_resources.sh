#!/bin/bash

# Switch to the appropriate directory
cd /var/lib/jenkins/workspace/Purdue_IGP/

# Apply the deployment YAML
kubectl apply -f deployment.yml --namespace default

# Apply the pod YAML
kubectl apply -f pod.yml --namespace default

# Apply the service YAML
kubectl apply -f service.yml --namespace default
