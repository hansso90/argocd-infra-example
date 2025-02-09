# Testing ArgoCd with app-of-apps pattern

![argocd solution with github-actions](./docs/images/overview.drawio.png)

# Setup up argo locally

Installng the argocd cli

```bash
brew install argocd
```

Running argo on docker-desktop cluster

```bash
./install.sh # setup argo on your kubernetes cluster

#wait till agro is running correctly
./port.sh # setup ports to connect to argo

./connect.sh # connect to argo change password and connect test-repo
```

## debugging

Stuck interface on deleting resource in argo:

```bash
kubectl patch Application/{resource} \
>     --type json \
>     --patch='[ { "op": "remove", "path": "/metadata/finalizers" } ]'
```

sync application

```bash
argocd app sync argocd/test-infra-app-of-apps
```