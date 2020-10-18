# Hashicorp Waypoint on Kubernetes

> Note: this repository is currently under development. I'm currently sorting out an issue with the ingress actually allowing external traffic to get into the waypoint pod. If you bypass the ingress by doing port forwarding, everything works like a charm.

This repository provides all the manifests needed to deploy a Hashicorp Waypoint server on Kubernetes. It includes the following features:
* cert-manager for automatic certificate issuing on Kubernetes ingresses.
* nginx as the ingress controller.
* waypoint deployed using a `StatefulSet` that stores it's data in a PersistentVolume (currently configured for use on GKE).

## Installation

### Variables to Change
* `waypoint/ingress.yaml` Hostname to a domain that you control
* `cert-manager/issuer.yaml` Email address to your own email address

### Cluster Installation
Bootstrapping the cluster is simple, run the following command from the root of this repo:

```bash
$ ./init-cluster.sh
```

## Uninstallation
In order to avoid deleting resources inside of namespaces that this repo shares with your own cluster, resources are deleted by calling `kubectl delete -f .` on every directory in this repo except for the bootstrap directory (as it has namespace resources).
```bash
$ ./delete-resources.sh
```
