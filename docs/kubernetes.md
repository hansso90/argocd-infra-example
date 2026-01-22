# How kubernetes works?

When you do a `kubectl apply <file>` you talk against the Kube API server.
This will store the resources based in etcd (key value store).
The kube controllers will react on the events send from the kubernetes api.
It will reconcile the state of the etcd and will check if the resource is deployed
Kube Scheduler will schedule the pod on a certain worker node, where space is available
Kublet on a worker node will connect with the Kubernetes api server and will update the state on the worker node.

# Kuberenes with ArgoCD

ArgoCD is a layer on top and will reconcile the state between the gitops repository and the kubernetes API.