#!/bin/sh

echo "Recreating easyTravel on demo2"
./setup_demo2.sh
./delete.sh
kubectl delete -f demo-live-2.yaml
kubectl delete -f loadgen-live-2-deployment.yaml

echo "Waiting for 60 seconds"
sleep 60
./create.sh
kubectl create -f demo-live-2.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-live-2-deployment.yaml
