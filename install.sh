#!/bin/bash

echo "install ArgoCd"
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "create different namespaces"
kubectl create namespace foo-tst
kubectl create namespace foo-acc
kubectl create namespace foo-prd