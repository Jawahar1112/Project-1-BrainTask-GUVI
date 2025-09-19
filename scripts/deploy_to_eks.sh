#!/bin/bash
kubectl apply -f k8s/
kubectl set image deployment/brain-tasks-static-app brain-tasks-static-app=$(cat image_uri.txt)
kubectl rollout status deployment/brain-tasks-static-app
