#!/bin/bash

#echo "Get first admin password for ArgoCD"
#kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
#
#echo "Access argoCD API server"
#kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
#
#echo "Login with admin account"
#argocd login localhost:8080
#
#echo "update the account password 8 characters"
#argocd account update-password
#
#echo "give full privilleges to docker-desktop cluster"
#argocd cluster add docker-desktop

echo "add repo to argoCd with with the follow command, please enter github PAT key:"
read patkey
# --username "" --password "{token}" for GITHUB PAT
argocd repo add https://github.com/hansso90/argocd-infra-example --username "" --password "$patkey"