#!/bin/bash

argocd admin initial-password -n argocd

argocd login localhost:8080

argocd account update-password

kubectl config get-contexts -o name

argocd cluster add docker-desktop