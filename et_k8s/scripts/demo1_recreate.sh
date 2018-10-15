#!/bin/sh

echo "Recreating easyTravel on demo1"
./setup_demo1.sh
./delete.sh
kubectl delete -f demo-live-1.yaml
kubectl delete -f loadgen-live-1-deployment.yaml

echo "Waiting for 60 seconds"
sleep 60
./create.sh
kubectl create -f demo-live-1.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-live-1-deployment.yaml
