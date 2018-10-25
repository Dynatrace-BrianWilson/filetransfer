#!/bin/sh

echo "Deleting easyTravel on demo1"
./setup_demo1.sh
./delete.sh

echo "Deleting exposure and traffic generator"
kubectl delete -f demo-live-1.yaml
kubectl delete -f loadgen-live-1-deployment.yaml

echo "deleting namespace 'demo-live-1'"
kubectl delete ns demo-live-1