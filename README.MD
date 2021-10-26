# Overview
A very simple k8s demo based off the content at https://dev.to/techworld_with_nana/kubernetes-crash-course-for-absolute-beginners-35pc

The cluster is comprised of:
- Two pods  
  - one running a mongoDB instance
  - one running a simple nodeJs webapp
- ConfigMap
- SecretMap


# Prerequisites
- Docker
- Minikube 

# Steps
## Standup
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start
kubectl apply -f mongo-config.yaml
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
minikube service webapp-service
```

The webapp is now available at the address listed by minikube
```
|-----------|----------------|-------------|------------------------------|
| NAMESPACE |      NAME      | TARGET PORT |            URL               |
|-----------|----------------|-------------|------------------------------|
| default   | webapp-service |        3000 | http://xxx.xxx.xxx.xxx:30100 |
|-----------|----------------|-------------|------------------------------|
```
## Teardown
```
kubectl delete -f webapp.yaml
kubectl delete -f mongo.yaml
kubectl delete -f mongo-secret.yaml
kubectl delete -f mongo-config.yaml
minikube stop
```