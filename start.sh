#!/bin/bash
minikube start
kubectl apply -f mongo-config.yaml
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
#give the webapp pod a chance to come up
sleep 20
kubectl port-forward service/webapp-service 8080:3000