#!/bin/sh

echo "Deleting easyTravel on demo2"
./setup_demo2.sh
./delete.sh

echo "Deleting exposure and traffic generator"
kubectl delete -f demo-live-2.yaml
kubectl delete -f loadgen-live-2-deployment.yaml
