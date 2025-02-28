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

# There is a New Volume Type in Town! 
🎉 OCI volume sources 🎉

---
hideInToc: true
background: /normal-slide-background.svg
---

# Agenda

<Toc />

---
hide: true
---
# Mario Loriedo
@mariolet

Podman core team member.<br>
Cloud Development Environments for the last 7 years.<br>

---
layout: section
---

<!--
Here we introduce the talk topic starting from why 
Explaining the new feature
And how I worked on this for Podman
-->
# Imagine if...

---
layout: section
---

<!-- Here we talk about the KEP -->
# [KEP-4639](https://github.com/kubernetes/enhancements/pull/4642)

---
layout: section
---

<!-- Here we about the versions of Kube that support it (introduced as alpha in 1.31) -->
# Currently a Beta Feature (as of v1.33) 

---
layout: section
---

<!-- Here we show the spec in a Pod -->
# The Spec 

---
layout: section
---

<!-- Here we talk about images and OCI artifacts -->
# Images and OCI Artifacts

---
layout: section
---

<!-- Here we talk/demo about the AI models -->
# AI Models

---
layout: section
---

<!-- Here we talk/demo about how it can be used to add dev tools as in kube debug -->
# Tools Injection

---
layout: section
---

<!-- Here we talk/demo about Podman support -->
# Outside of the Cluster

---
hideInToc: true
---

# Links
To Learn More

[KEP-4639](https://github.com/kubernetes/enhancements/issues/4639) <br>
[Sacha Blog Post](https://kubernetes.io/blog/2024/08/16/kubernetes-1-31-image-volume-source/) <br>
[KEP-4639 Graduation to beta issue](https://github.com/kubernetes/kubernetes/pull/130135) <br>
[contaienrd support PR](https://github.com/containerd/containerd/pull/10579) <br>
 <br>

---
hideInToc: true
layout: end
---

# Thank You

