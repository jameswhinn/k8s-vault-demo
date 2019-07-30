#! /bin/bash
set -x

# eksctl create cluster --name "${clusterName}" --nodes=1
minikube start
kubectl create -f ./rbac.yml