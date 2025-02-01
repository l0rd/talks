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
```shell
$ podman run -d -p 8080:80 httpd
bc9e281309d5a9d71f3cef0a48d76b1cc6097afbf2bd7...

$ curl localhost:8080
<html><body><h1>It works!</h1></body></html>
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

<!-- pause -->

```shell
$ podman kube play ./pod.yaml
Pod:
d3982f53286fd3a4180d90aaa78cafed3b2d3a6e048fd947596f41254b2af66a
Containers:
a0ac28a051f73099e947fd425becf99de4380a6c35977391307581bac69d80c3
89978637e6edc22e8444da32630eca0f737f3840eaccd56e68d960954823f29d
```

<!-- column: 1 -->

<!-- pause -->

```shell
$ podman ps --format "{{.Image}}"
localhost/podman-pause:5.4.0-dev-1732880556
docker.io/library/redis:alpine
localhost/hello-py-aioweb:latest

$ podman volume ls
DRIVER      VOLUME NAME
local       webapp_redis

$ curl -s localhost:8080
counter=1

$ curl -s localhost:8080
counter=2
```

<!-- end_slide -->

`podman kube play --build`
---

```shell
$ podman rmi localhost/hello-py-aioweb:latest
Untagged: localhost/hello-py-aioweb:latest
Deleted: b478a9352932d19b944bee8bd71f463b04fd9eabcdae804c8ee08b954c655389

$ podman kube play ./pod.yaml --build
STEP 1/7: FROM python:3.9-alpine
STEP 2/7: WORKDIR /usr/src/app
STEP 3/7: COPY requirements.txt ./
STEP 4/7: RUN pip install --no-cache-dir -r requirements.txt
Collecting aiohttp
  Downloading aiohttp-3.11.11-cp39-cp39-musllinux_1_2_x86_64.whl (1.6 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.6/1.6 MB 39.9 MB/s eta 0:00:00
Collecting aioredis
  Downloading aioredis-2.0.1-py3-none-any.whl (71 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 71.2/71.2 kB 83.0 MB/s eta 0:00:00
Collecting yarl<2.0,>=1.17.0
  Downloading yarl-1.18.3-cp39-cp39-musllinux_1_2_x86_64.whl (336 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 336.6/336.6 kB 67.4 MB/s eta 0:00:00
Collecting attrs>=17.3.0
  Downloading attrs-25.1.0-py3-none-any.whl (63 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 63.2/63.2 kB 54.9 MB/s eta 0:00:00
Collecting multidict<7.0,>=4.5
  Downloading multidict-6.1.0-cp39-cp39-musllinux_1_2_x86_64.whl (126 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 126.4/126.4 kB 90.3 MB/s eta 0:00:00
Collecting aiohappyeyeballs>=2.3.0
  Downloading aiohappyeyeballs-2.4.4-py3-none-any.whl (14 kB)
Collecting propcache>=0.2.0
  Downloading propcache-0.2.1-cp39-cp39-musllinux_1_2_x86_64.whl (207 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 207.3/207.3 kB 82.5 MB/s eta 0:00:00
Collecting async-timeout<6.0,>=4.0
  Downloading async_timeout-5.0.1-py3-none-any.whl (6.2 kB)
Collecting aiosignal>=1.1.2
  Downloading aiosignal-1.3.2-py2.py3-none-any.whl (7.6 kB)
Collecting frozenlist>=1.1.1
  Downloading frozenlist-1.5.0-cp39-cp39-musllinux_1_2_x86_64.whl (251 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 251.6/251.6 kB 87.3 MB/s eta 0:00:00
Collecting typing-extensions
  Downloading typing_extensions-4.12.2-py3-none-any.whl (37 kB)
Collecting idna>=2.0
  Downloading idna-3.10-py3-none-any.whl (70 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 70.4/70.4 kB 49.3 MB/s eta 0:00:00
Installing collected packages: typing-extensions, propcache, idna, frozenlist, attrs, async-timeout, aiohappyeyeballs, multidict, aiosignal, aioredis, yarl, aiohttp
Successfully installed aiohappyeyeballs-2.4.4 aiohttp-3.11.11 aioredis-2.0.1 aiosignal-1.3.2 async-timeout-5.0.1 attrs-25.1.0 frozenlist-1.5.0 idna-3.10 multidict-6.1.0 propcache-0.2.1 typing-extensions-4.12.2 yarl-1.18.3
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv

[notice] A new release of pip is available: 23.0.1 -> 25.0
[notice] To update, run: pip install --upgrade pip
STEP 5/7: COPY . .
STEP 6/7: CMD [ "python", "-m", "app.web" ]
STEP 7/7: EXPOSE 8080
COMMIT localhost/hello-py-aioweb:latest
Getting image source signatures
Copying blob 75654b8eeebd skipped: already exists
Copying blob 974892bad144 skipped: already exists
Copying blob 9c20ed04c261 skipped: already exists
Copying blob 5743a7dd9d83 skipped: already exists
Copying blob fec1eb090246 done   |
Copying config a4f23001df done   |
Writing manifest to image destination
--> a4f23001dfc8
Successfully tagged localhost/hello-py-aioweb:latest
a4f23001dfc8137a3aa08b78d94ead2ba9e79d935b19490db4ab195cb0b5fbcb
Pod:
3034c15937fc3f559e4eefa384e0fafbf0c33b3ef51c72c8b5a6f215069d079b
Containers:
e9a416b5758ad68a53983dccb03b28af54065b86c63eae3c35fd5918180dba0c
06d5485c0f2ea4118687e7ab33a7c0075144b66068afdf396ade457a054d7998
```

<!-- end_slide -->

`podman kube play --build`
---

```shell
$ podman images localhost/hello-py-aioweb:latest
REPOSITORY                 TAG         IMAGE ID      CREATED             SIZE
localhost/hello-py-aioweb  latest      a4f23001dfc8  About a minute ago  73.8 MB

$ podman ps --format "{{.Image}}"
localhost/podman-pause:5.4.0-dev-1732880556
docker.io/library/redis:alpine
localhost/hello-py-aioweb:latest

$ podman volume ls
DRIVER      VOLUME NAME
local       webapp_redis

$ curl -s localhost:8080
counter=1
```

<!-- end_slide -->

`podman kube generate`
---

```shell
$ podman run -d -p 8080:80 httpd
490413ffa87ee49ffa5358833b42f35c1ded08afc160a5740e6162657fb9d9d9

$ podman ps --format "{{.Image}}"
docker.io/library/httpd:latest
```

<!-- end_slide -->

`podman kube generate`
---

```shell
$ ID=$(podman ps --last 1 -q)
$ podman kube generate ${ID}
# Save the output of this file and use kubectl create -f to import
# it into Kubernetes.
#
# Created with podman-5.4.0-dev
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: "2025-02-01T10:18:38Z"
  labels:
    app: pedanticbassi-pod
  name: pedanticbassi-pod
spec:
  containers:
  - image: docker.io/library/httpd:latest
    name: pedanticbassi
    ports:
    - containerPort: 80
      hostPort: 8080
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
### **Axel Talk about Quadlets at 3:30pm**
### [presenterm](https://github.com/mfontanini/presenterm)
### [this deck](https://github.com/l0rd/talks/tree/gh-pages/podman-kube-play)

<!-- end_slide -->
