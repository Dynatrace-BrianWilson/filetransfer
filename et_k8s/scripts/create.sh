#!/bin/sh

echo "Creating easyTravel"
kubectl create -f easytravel-backend-deployment.yaml
kubectl create -f easytravel-backend-service.yaml
kubectl create -f easytravel-frontend-deployment.yaml
kubectl create -f easytravel-frontend-service.yaml
kubectl create -f easytravel-frontend-service-2.yaml
kubectl create -f easytravel-mongodb-deployment.yaml
kubectl create -f easytravel-mongodb-service.yaml
kubectl create -f easytravel-lb-deployment.yaml
