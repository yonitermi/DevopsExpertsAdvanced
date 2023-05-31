#!/bin/bash

kubectl create deployment airflow-deployment --image=puckel/docker-airflow
kubectl expose deployment airflow-deployment --type=LoadBalancer --port=80 --target-port=8080

#Make the script executable:

chmod +x deploy_airflow.sh

#Execute the script to deploy and expose the Airflow application:

./deploy_airflow.sh
