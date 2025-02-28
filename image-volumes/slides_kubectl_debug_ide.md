---
theme: default
# background: normal-slide-background.svg
# some information about your slides (markdown enabled)
title: kubectl debug ide
info: |
  ## KCD Austria presentation
  Extending kubectl debug command.

# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# take snapshot for each slide in the overview
overviewSnapshots: true
hideInToc: true
fonts:
  # basically the text
  # sans: Robot
# sans: 'Iosevka, Robot'
  # use with `font-serif` css class from UnoCSS
  serif: 'Iosevka Slab, Robot Slab'
  # for code blocks, inline code, etc.
  mono: Fira Code
# local: Iosevka
---

# `kubectl debug` is missing an IDE option 
🔧 Let’s fix that! 🪛

---
hideInToc: true
background: /normal-slide-background.svg
---

# Agenda

<Toc />

---
layout: section
hideInToc: true
hide: true
---

# But first...

---
hideInToc: true
hide: true
---

# The Prononciation Debate

<div class="text-size-9xl text-center">
`kubectl`
</div>

<div grid="~ cols-3 gap-4">

<div v-click class="text-size-5xl text-center border">
kube c-t-l
</div>

<div v-click class="text-size-5xl text-center border">
kube cuttle
</div>

<div v-click class="text-size-5xl text-center border">
kube control
</div>

</div>

---
hideInToc: true
hide: false
layout: image
image: ./kubectl-prononciation.svg
backgroundSize: 60%
---

# The Prononciation Debate
Let's keep it simple

---
hide: true
---
# Mario Loriedo
@mariolet

Podman core team member.<br>
Cloud Development Environments for the last 7 years.<br>
A fanatical full-time open sourceror.<br>

Blah blah blah

---
layout: section
---

# The Debugging Ceremony

---
hideInToc: true
layout: image-right
image: ./ritual.jpg
backgroundSize: contain
---

# The Debugging Ceremony
A Neverending Story

<br/>

<div v-click class="text-size-3xl">
😇  `k apply`
</div>

<div v-click class="text-size-3xl">
😐  `k get pod`
</div>

<div v-click class="text-size-3xl">
🫤  `k describe pod`
</div>

<div v-click class="text-size-3xl">
🤨 `k get pod -o json`
</div>

<div v-click class="text-size-3xl">
😤 `k get events`
</div>

<div v-click class="text-size-3xl">
😳 `k logs`
</div>

<div v-click class="text-size-3xl">
😭 `k exec`
</div>

<div v-click class="text-size-3xl">
🤬 `k debug`
</div>

<!--
Reference: https://kubernetes.io/docs/reference/kubectl/generated/kubectl_debug/
-->

---
hideInToc: true
hide: false
---

# `k debug`
Debug by creating a copy of the target Pod

<div grid="~ cols-2">

<div>
</div>

<div>
<img class="h-50 opacity-100"
  src="./k-debug-classic-diagram-before.svg"
  alt=""
/>
</div>

</div>

---
hideInToc: true
hide: false
---

# `k debug`
Debug by creating a copy of the target Pod

<div grid="~ cols-2">

<div>
<img class="align-self-end mr-3 w-100 opacity-100"
  src="./k-debug-classic.svg"
  alt=""
/>
</div>

<div>
<img class="h-100 opacity-100"
  src="./k-debug-classic-diagram.svg"
  alt=""
/>
</div>

</div>

<!--
References:
https://kubernetes.io/docs/tasks/debug/debug-application/debug-running-pod/
https://github.com/kubernetes/enhancements/blob/master/keps/sig-cli/1441-kubectl-debug/README.md
-->


---
hideInToc: true
hide: true
---

# `k debug`
Pod Troubleshooting with Ephemeral Debug Container

<div grid="~ cols-2 gap-4">

<div>
<img class="w-100 opacity-100"
  src="./k-debug-ephemeral.svg"
  alt=""
/>
</div>

<div>
<img class="h-100 opacity-100"
  src="./k-debug-ephemeral-diagram.svg"
  alt=""
/>
</div>

</div>

---
hideInToc: true
hide: true
---

# Demo 1

`k debug` (the copy alternative)

<div>
<img class="h-100 opacity-100"
  src="./demo1.svg"
  alt=""
/>
</div>

<!-- 
```bash
# kubectl apply -f ./config
# oc expose pod/outyet
# oc expose svc outyet
# kubectl debug -it outyet --image ghcr.io/l0rd/outyet-dev:latest --target outyet
kubectl debug -it outyet --image ghcr.io/l0rd/outyet-dev:latest --copy-to outyet-debug --share-processes -- bash
ps -ef
git clone https://github.com/l0rd/outyet
cd outyet && go build
go install github.com/go-delve/delve/cmd/dlv@latest
dlv debug ...
```
-->

---
hideInToc: true
layout: image
image: ./debug-without-an-ide.png
backgroundSize: 60%
---

---
layout: section
---

# Cloud Development Environments
Containerized Development Environments. IDE included

---
hideInToc: true
layout: two-cols-header
---

# Cloud Development Environments (CDEs)
A Growing Market

::left::

<div>
<img class="w-90 opacity-100"
  src="./cde.svg"
  alt=""
/>
</div>

::right::

<div>
<img class="opacity-100"
  src="./cde-timeline.webp"
  alt=""
/>
</div>

<!--
Reference https://newsletter.pragmaticengineer.com/p/cloud-development-environment-vendors
-->

---
hideInToc: true
layout: two-cols-header
---

# The DevWorkspace Kubernetes Operator 
A CNCF Project to Run CDEs on Kubernetes

::left::

```yaml twoslash
kind: DevWorkspace
apiVersion: workspace.devfile.io/v1alpha2
metadata:
  name: dw
spec:
  started: true
  template:
    projects:
      - name: outyet
        git:
          remotes:
            origin: https://github.com/l0rd/outyet.git
    components:
      - name: dev-tooling
        container:
          image: ghcr.io/l0rd/outyet-dev:latest
  contributions:
    - name: editor
      kubernetes:
        name: vscode
```

::right::

<div>
<img class="opacity-100"
  src="./cde.gif"
  alt=""
/>
</div>

---
hideInToc: true
hide: true
---

# Demo 2
Deploy and Use a CDE

<div>
<img class="h-100 opacity-100"
  src="./demo2.svg"
  alt=""
/>
</div>

---
hideInToc: true
layout: image
image: ./k-debug-cde.png
backgroundSize: 60%
---


---
layout: section
---

# Extending `kubectl`

## `kubectl debug-cde`

---
hideInToc: true
layout: two-cols-header
hide: true
---

# The Plugin Mechanism
Plugins extend `kubectl` with new sub-commands

::left::

<div>
<img class="h-100 opacity-100"
  src="./k-plugin-mechanism.svg"
  alt=""
/>
</div>

::right::

```bash
$ k plugin list
```
<div>
<img class="h-50 opacity-100"
  src="./k-plugin-list.svg"
  alt=""
/>
</div>
<div>
```bash
$ k hello
```
<img class="h-50 opacity-100"
  src="./k-hello.svg"
  alt=""
/>
</div>

<!--
https://kubernetes.io/docs/tasks/extend-kubectl/kubectl-plugins/
https://github.com/kubernetes/sample-cli-plugin
https://github.com/kubernetes/cli-runtime
 -->
---
hide: true
hideInToc: true
layout: image
image: ./k-debug-ide-help.svg
backgroundSize: 100%
---

```bash
$ k debug-cde
```
---
hide: false
hideInToc: true
backgroundSize: 100%
layout: two-cols-header
---

# `debug` vs `debug-cde`

::left::

<div>
<img class="w-200 opacity-100"
  src="./k-debug-classic.svg"
  alt=""
/>
</div>

::right::

<div>
<img class="w-200 opacity-100"
  src="./k-debug-cde.svg"
  alt=""
/>
</div>

---
hideInToc: true
---

# Demo
`kubectl debug-cde`

<div>
<img class="h-100 opacity-100"
  src="./demo3.svg"
  alt=""
/>
</div>

---
hideInToc: true
---

# Links
To Learn More

https://github.com/devfile/kubectl-debug-cde <br>
https://kubernetes.io/docs/tasks/debug/debug-application/debug-running-pod/ <br>
https://github.com/devfile/devworkspace-operator/tree/main <br>
https://github.com/kubernetes/sample-cli-plugin <br>

---
hideInToc: true
layout: end
---

# Thank You

