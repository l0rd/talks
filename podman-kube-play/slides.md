---
theme:
  name: catppuccin-latte
title: Play with Kube using Podman
# sub_title: Podman - The Next Generation Container Engine
author: Mario Loriedo - Red Hat
---

Agenda
---

### Podman
### Kubernetes Pod
### `podman kube play`
### `podman kube generate`
### Supported Kubernetes Objects
### More Awesomeness
### Resources

<!-- end_slide -->

<!-- jump_to_middle -->
Podman
---

<!-- end_slide -->

Podman
---

<!-- We are at FOSDEM, containers room, I assuming everybody know Podman
Or at least what a container engine is.
Used to be Red Had governed but soon a CNCF Sandbox project. -->
<!-- column_layout: [1, 2] -->

<!-- column: 0 -->

## First release in 2018

<!-- pause -->

#### Mostly Red Hat maintainers until now

<!-- pause -->

##### Recently accepted as a CNCF Project

<!-- column: 1 -->

<!-- pause -->
```bash +exec
./clean
```

<!-- pause -->
```bash +exec
podman run -d -p 8080:80 httpd
```

<!-- pause -->
```bash +exec
curl -s localhost:8080
```

<!-- end_slide -->

<!-- 
Podman Pods
---

podman pod create -p 8080:80 --name mypod
podman create --pod mypod --name myapp httpd
podman pod start mypod
podman ps

podman pod stop mypod
podman pod rm mypod

-->

<!-- jump_to_middle -->
Kubernetes Pod
---

<!-- end_slide -->

Kubernetes Pod
---
```file {1-30|10-18|19-25|26-29} +line_numbers
path: pod.yaml
language: yaml
```
<!-- end_slide -->

<!-- jump_to_middle -->

`podman kube play`
---

<!-- end_slide -->

`podman kube play`
---

<!-- column_layout: [1, 1] -->

<!-- column: 0 -->

```bash +exec
./clean
```
<!-- pause -->

```bash +exec
podman kube play ./pod.yaml
```
<!-- pause -->

<!-- column: 1 -->
```bash +exec
podman ps --format "{{.Image}}"
```
<!-- pause -->

```bash +exec
podman volume ls
```
<!-- pause -->

```bash +exec
curl -s localhost:8080
```

<!-- pause -->

```bash +exec
curl -s localhost:8080
```

<!-- end_slide -->

`podman kube play --build`
---

```bash +exec
./clean
```
<!-- pause -->

```bash +exec
podman rmi localhost/hello-py-aioweb:latest
```

<!-- end_slide -->

`podman kube play --build`
---

```bash +exec
podman kube play ./pod.yaml --build
```

<!-- end_slide -->

`podman kube play --build`
---

```bash +exec
podman images localhost/hello-py-aioweb:latest
```
<!-- pause -->

```bash +exec
podman ps --format "{{.Image}}"
```
<!-- pause -->

```bash +exec
podman volume ls
```
<!-- pause -->

```bash +exec
curl -s localhost:8080
```

<!-- end_slide -->

`podman kube generate`
---

```bash +exec
./clean
```
<!-- pause -->

```bash +exec
podman run -d -p 8080:80 httpd
```
<!-- pause -->

```bash +exec
podman ps --format "{{.Image}}"
```

<!-- end_slide -->

`podman kube generate`
---

```bash +exec
ID=$(podman ps --last 1 -q)
podman kube generate ${ID}
```

<!-- end_slide -->

Supported Kubernetes Objects
---

## Pods
<!-- pause -->
## Deployments
<!-- pause -->
## PersistentVolumeClaims
<!-- pause -->
## ConfigMaps
<!-- pause -->
## Secrets
<!-- pause -->
## DaemonSets
<!-- pause -->
## Jobs

<!-- end_slide -->

More (Podman) Awesomeness
---

<!-- pause -->
#### Rootless and Daemonless
<!-- pause -->
#### Build Farms
<!-- pause -->
#### Image Volumes
<!-- pause -->
#### Quadlet
<!-- pause -->
#### Podmansh

<!-- end_slide -->

Resources To Learn More
---

### [podman.io](https://podman.io)
### [github.com/containers/](https://github.com/container/)
### [presenterm](https://github.com/mfontanini/presenterm)
### [this deck](https://github.com/l0rd/talks/tree/gh-pages/podman-kube-play)

<!-- end_slide -->
