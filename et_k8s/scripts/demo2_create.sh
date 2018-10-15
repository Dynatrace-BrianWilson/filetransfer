#!/bin/sh

echo "Creating easyTravel on demo2"
./setup_demo2.sh
./create.sh

echo "Exposing easyTravel and generating traffic"
kubectl create -f demo-live-2.yaml
echo "Waiting for 150 seconds before starting loadgen"
sleep 150
kubectl create -f loadgen-live-2-deployment.yaml
