#!/bin/bash

kubectl create deployment superset-deployment --image=amancevice/superset
kubectl expose deployment superset-deployment --type=LoadBalancer --port=80 --target-port=8088

# Make the script executable:
chmod +x deploy_superset.sh

# Execute the script to deploy and expose the SuperSet application:
./deploy_superset.sh

