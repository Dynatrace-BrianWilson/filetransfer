#!/bin/sh

echo "Deleting easyTravel"
kubectl delete -f easytravel-backend-deployment.yaml
kubectl delete -f easytravel-backend-service.yaml
kubectl delete -f easytravel-frontend-deployment.yaml
kubectl delete -f easytravel-frontend-service.yaml
kubectl delete -f easytravel-mongodb-deployment.yaml
kubectl delete -f easytravel-mongodb-service.yaml
kubectl delete -f easytravel-frontend-service-2.yaml
kubectl delete -f easytravel-lb-deployment.yaml


