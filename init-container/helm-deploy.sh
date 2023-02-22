#!/bin/bash

# login to az cli using managed identity
az login --identity

# get kubernetes credentials
az aks get-credentials --name $CLUSTERNAME --resource-group $CLUSTERGROUP

# add helm repo
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# update helm repos
helm repo update

# install helm chart
helm install ingress-nginx ingress-nginx/ingress-nginx
