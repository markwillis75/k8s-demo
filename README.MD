# Overview
A very simple k8s demo based off the content at https://dev.to/techworld_with_nana/kubernetes-crash-course-for-absolute-beginners-35pc

The cluster is comprised of:
- Two pods  
  - one running a mongoDB instance
  - one running a simple Node.js webapp
- ConfigMap
- SecretMap

&nbsp;

# Prerequisites
- Docker
- Minikube 

&nbsp;

# Steps
## Standup
```bash
./start.sh

# Starts minikube
# Creates the configmap and secret store 
# Brings up the mongo pod and webapp pod
# Forwards port 8080 to the service port (3000) of the webapp pod
```


The webapp is now available at http://localhost:8080

## Teardown
```bash
./stop.sh

# deletes pods
# deletes configmap
# deletes secret store
# stops minikube
```
