#!/bin/sh

echo "Creating easyTravel on demo1"
./setup_demo1.sh
./create.sh

echo "Exposing easyTravel and generating traffic"
kubectl create -f demo-live-1.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-live-1-deployment.yaml
