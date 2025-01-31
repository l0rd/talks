---
theme:
  name: light
title: Play with Kube using Podman
sub_title: Podman - The Next Generation Container Engine
author: Mario Loriedo - Red Hat
---

Agenda
---

### Podman
### Kubernetes Pod
### Podman Pod
### `podman kube play`
### `podman kube play --build`
### Supported Kubernetes Objects
### `podman kube generate`
### More podmaness podmanitude
### Resources

<!-- end_slide -->

Podman
---
We are at FOSDEM, containers room, I assuming everybody know Podman
Or at least what a container engine is.
Used to be Red Had governed but soon a CNCF Sandbox project.
<!-- pause -->
```bash +exec
podman run hello
```
<!-- end_slide -->

Podman Pods
---

<!-- pause -->
```bash +exec
podman pod create -p 8080:80 --name mypod
podman create --pod mypod --name myapp httpd
podman pod start mypod
podman ps
```

<!-- pause -->
```bash +exec
podman pod stop mypod
podman pod rm mypod
```
<!-- end_slide -->

Kubernetes Pods
---
*Kubernetes Pods without Kubernetes*
```file {10-18|19-25|26-29} +line_numbers
path: pod.yaml
language: yaml
```
<!-- end_slide -->

`podman kube play`
---
```bash +exec
podman kube play ./pod.yaml
```
<!-- pause -->
```bash +exec
curl -s localhost:8080
```
<!-- pause -->
```bash +exec
curl -s localhost:8080
```
<!-- pause -->
```bash +exec
podman kube down ./pod.yaml
```
<!-- end_slide -->

`podman kube play --build`
---
```bash +exec
podman rmi localhost/hello-py-aioweb:latest
```
<!-- pause -->
```bash +exec
podman kube play ./pod.yaml --build
```
<!-- pause -->
```bash +exec
podman kube down ./pod.yaml
```
<!-- end_slide -->

Supported Kubernetes Objects
---

- Pod
- Deployment
- PersistentVolumeClaim
- ConfigMap
- Secret
- DaemonSet
- Job

<!-- end_slide -->

`podman kube generate`
---
*From local containers to Kubernetes Pods*
```bash +exec
podman run -d -p 8080:80 httpd
```
<!-- pause -->
```bash +exec
ID=$(podman ps --last 1 -q)
podman kube generate ${ID}
```
<!-- pause -->
```bash +exec
podman rm --force --all
```
<!-- end_slide -->

More Podman Awesomeness
---

- Rootless and Daemonless
- Build Farms
- Image Volumes
- Quadlet
- Podmansh

<!-- end_slide -->

To Learn More
---

- https://podman.io
- The Source Code [github.com/containers/](https://github.com/container/)
- Axel Talk about Quadlets in a few hours
- https://github.com/mfontanini/presenterm

<!-- end_slide -->
