#!/bin/bash

echo "install ArgoCd"
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "create different namespaces"
kubectl create namespace test-tst
kubectl create namespace test-acc
kubectl create namespace test-prd