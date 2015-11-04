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
.center[![dockerhub](images/dockerhub.png)]

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

### Custom images can be built from a Dockerfile

```Dockerfile
FROM tomcat

# copy application in web app folder
COPY hello-eclipsecon.war /usr/local/tomcat/webapps/

# define containers default command
CMD catalina.sh run
```

```bash
docker build -t hello-eclipsecon .
```

### Resulting image is built on top of the base image
.center[![custom image](images/docker-custom-image.png)]

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
COPY src /usr/local/helloeclipsecon/src
COPY pom.xml /usr/local/helloeclipsecon/
WORKDIR /usr/local/helloeclipsecon

CMD mvn install
```

```bash
docker build -t mvn-dock .
```

```bash
docker run mvn-dock
docker run mvn-dock mvn clean
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
### Common IDEs supported features 
<br><br>
![IDEs features](images/ide-features.png)
]   
---
.left-column[
  ## doclipser [usage]
  ### IDEs
  ### Features
]
.right-column[
### doclipser supported features 
<br><br>
![IDEs features](images/ide-features-doclipser.png)
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
**Eclipse** (v4.4 or higher), 
**Docker** (API v1.15 or higher),
**Java 7** or higher

### Dockerfile editor
![doclipser-edit](images/do-syntaxh.png)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
![doclipser-edit](images/do-autocomplete.png)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
![doclipser-edit](images/do-validation.png)

### Docker commands
![doclipser-run](images/do-commands.png)
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

+ Syntax highlighting, autocomplete, validation

+ Unit testing

<br><br>
![xtext](images/xtext.png)
]
---
.left-column[
  ## doclipser [dev]
  ### Dockerfile
  ### Containers run
]
.right-column[
### Run of Docker containers

+ Docker API developed by Spotify

+ Eclipse Jobs
<br><br>
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
### Plugins automated build
<br><br><br>
![plugin build](images/doclipser-build.png)
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

## Thank you
[mario.loriedo@zenika.com]

[@mariolet]

[https://github.com/domeide/doclipser]

---
class: center, middle, doclipser

background-image: url(images/evaluate.png)
