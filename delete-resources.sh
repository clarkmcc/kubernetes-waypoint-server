#!/bin/sh
kubectl delete -f waypoint/
kubectl delete -f nginx/
kubectl delete -f cert-manager/
