name: inverse
layout: true
class: center, middle, inverse
---

# doclipser
[or how I've put Docker in your favorite IDE]

---
layout: false
.left-column[
  ## Agenda
]
.right-column[
<br><br><br>
.large[

1. Short Docker intro

2. doclipser (usage)

3. doclipser (development)
]
]

---

template: inverse

## Hello
[my name is Mario]

---


.large[
.left[My name is Mario..........................![mario](images/mario_pixels.png)]
.left[CTO @ Zenika Paris.......................![zenika](images/zenika.png)]
.left[Docker certified trainer..............![docker](images/docker.png)]
.left[[doclipser](https://github.com/domeide/doclipser) and [sublime docker](https://github.com/domeide/sublime-docker)......![eclipse](images/eclipse.png)![sublimetext](images/sublimetext-large.png)]


.left[[mariolet](https://twitter.com/mariolet)........................................![twitter](images/twitter.png)]
.left[[l0rd](https://github.com/l0rd)................................................![github](images/github.png)]
]

---
template: inverse

## Short Docker introduction
[#@#$!! what's that containers thing again #@#$!!?]

---

.left-column[
  ## Docker short intro
  ### As a .red[VM]
]
.right-column[
### Containers are like traditional VMs
]
<br><br><br><br><br><br><br><br><br>
--
![vm-1](images/vm-1.png)   
--
![vm-2](images/vm-2.png)
---

.left-column[
  ## Docker short intro
  ### As a .red[VM]
  ### .red[Not] a VM
]
.right-column[
### Containers are different than traditional VMs
]
<br><br><br><br><br><br><br><br><br>
--
![no-2](images/novm-2.png) 
--
![no-1](images/novm-1.png)
---

.left-column[
  ## Docker short intro
  ### As a .red[VM]
  ### .red[Not] a VM
  ### docker run
]
.right-column[


### Container creation and execution

```bash
docker run -d tomcat
```


### Multiple containers creation and execution

```bash
for i in `seq 1 5`; do 
  docker run -d -P --name tomcat$i tomcat;
done
```

### Containers are running instances of images

```bash
docker run tomcat
docker run ubuntu
docker run java
docker run jira
docker run mariolet/hello-world
```
]

---

.left-column[
  ## Docker short intro
  ### As a .red[VM]
  ### .red[Not] a VM
  ### docker run
  ### Hub Images
]
.right-column[

### Images can be downloaded from the DockerHub .red[*]
<br><br>

TODO

### Images are made of layers
.center[![docker-tomcatimage](images/docker-tomcat-image.png)]
]

.footnote[.red[*] or any Docker registry]
---
layout: false
.left-column[
  ## Docker short intro
  ### As a .red[VM]
  ### .red[Not] a VM
  ### docker run
  ### Hub Images
  ### Custom images
]
.right-column[

### Custom images can be build from a Dockerfile

```Dockerfile
FROM tomcat

# copy application in web app folder
COPY hello-eclipsecon.war /usr/local/tomcat/webapps/ROOT.war

# define containers default command
CMD catalina.sh run
```

```bash
docker build -t hello-eclipsecon ./project-dir
```

### Resulting image is built on top of the base image
TODO
]
---
layout: false
.left-column[
  ## Docker short intro
  ### As a .red[VM]
  ### .red[Not] a VM
  ### docker run
  ### Hub Images
  ### Custom images
  ### Use cases
]
.right-column[

### Docker use cases in development environments
]
--
.right-column[
#### Docker can be used as run tool (we just saw it)

```bash
docker run -d hello-eclipsecon
```
]
--
.right-column[
#### Docker can be used as build tool too !

```Dockerfile
FROM maven

COPY src /usr/local/src
WORKDIR /usr/local/src

CMD mvn 
```

```bash
docker build -t mvn-dock .
```

```bash
docker run mvn-dock clean install
docker run mvn-dock test
```
]

---
class: center, middle, doclipser

background-image: url(images/doclipser-main-logo.png)

## &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doclipser
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[usage]

---
.left-column[
  ## doclipser [usage]
  ### IDEs
]
.right-column[
### Docker and IDEs
<br><br>
![domeide](images/domeide.png)
]   
---
.left-column[
  ## doclipser [usage]
  ### IDEs
  ### Features
]
.right-column[
### Common IDEs Docker support features 
<br><br>
![IDEs features](images/IDE-features.png)
]   
---
.left-column[
  ## doclipser [usage]
  ### IDEs
  ### Features
  ### doclipser
]
.right-column[
### Prerequisites
### Configuration
![doclipser-conf](images/doclipser-conf.png)
### Dockerfile editor
![doclipser-edit](images/doclipser-edit.png)
### Containers run
![doclipser-run](images/doclipser-run.png)
<br><br>
]   
---
.left-column[
  ## doclipser [usage]
  ### IDEs
  ### Features
  ### doclipser
  ### Demo
]
.right-column[
### Demo Time!
<br><br>
![demo](images/demo-commitstrip.jpg)
]   
---
class: center, middle, doclipser

background-image: url(images/doclipser-main-logo.png)

## &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doclipser
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[development]

---
.left-column[
  ## doclipser [dev]
  ### Dockerfile
]
.right-column[
### Dockerfile support
+ Xtext plugin

+ Easy grammar definition

+ Syntax highlighting, autocomplete, 

+ Unit testing

![xtext](images/xtext.png)
]
---
.left-column[
  ## doclipser [dev]
  ### Dockerfile
  ### Containers run
]
.right-column[
### Run of Dockerfile containers

+ Docker API developed by Spotify

+ Eclipse Jobs

![docker api](images/docker-api.png)
]
---
.left-column[
  ## doclipser [dev]
  ### Dockerfile
  ### Containers run
  ### Build automation
]
.right-column[
### How are the plugins automated build

+ GitHub repo

+ CircleCI

+ Maven Tycho

+ BinTray

![plugin build](images/plugin-build.png)
]
---
.left-column[
  ## doclipser [dev]
  ### Dockerfile
  ### Containers run
  ### Build automation
  ### Current issues
]
.right-column[
### doclipser current issues

+ Dockerfiles name limitation

+ Volumes and links

+ Manual configuration

+ Java 6 support
]

---

.left-column[
  ## doclipser [dev]
  ### Dockerfile
  ### Containers run
  ### Build automation
  ### Current issues
  ### Roadmap
]
.right-column[

### doclipser roadmap

+ Add "File->New->Dockerfile" menu item

+ Quick-fixes for Dockefiles

+ Remove limitation on Dockerfile names

+ Make Docker properties configurable via the UI

+ Support Docker Compose files

]

---

template: inverse

## merci
[mario.loriedo@zenika.com]

[@mariolet]
