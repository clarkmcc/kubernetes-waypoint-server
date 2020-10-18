#!/bin/bash
kubectl apply -f configmap.yaml
kubectl apply -f serviceaccount.yaml
kubectl apply -f default-backend-deployment.yaml
kubectl apply -f default-backend-service.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
