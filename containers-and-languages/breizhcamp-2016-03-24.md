name: inverse
layout: true
class: center, middle, inverse
---
layout: false
template: inverse
class: center, middle, doclipser

background-image: url(images/fizzbuzzterminals.png)

<br><br><br><br><br><br>
# 5 conteneurs pour 5 langages
<br><br><br>


---
template: inverse

## Hello

---
layout: false

.large[
.left[Mario........................................![mario](images/mario_pixels.png)]
.left[CTO @ Zenika Paris.................![zenika](images/zenika.png)]
.left[Formateur officiel Docker.....![docker](images/docker.png)]

.left[[@mariolet](https://twitter.com/mariolet)................................![twitter](images/twitter.png)]
.left[[l0rd](https://github.com/l0rd)...........................................![github](images/github.png)]
]

---
layout: false
.left-column[
.footnote[@mariolet ]

  ## Agenda
]
.right-column[
<br>
1. Des conteneurs pour (mieux) développer

2. FizzBuzz

3. 5 conteneurs pour 5 langages
  - Swift
  - Rust
  - Haskell
  - Go
  - JShell

4. Conclusions
]
---

template: inverse

## Des conteneurs pour (mieux) développer

---

.left-column[
.footnote[@mariolet ]


  ## Conteneurs pour les développeurs
]
.right-column[
<br><br>
Nous aimons notre métier...
<br><br>

]

--
.right-column[
...mais il y a des fois où il y a juste rien qui marche
<br><br><br><br>
![Frustration](images/frustration.gif)
]
---

.left-column[
.footnote[@mariolet ]


  ## Conteneurs pour les développeurs
  ### Frustrations
]
.right-column[
<br>
Ces fois où la mise en place de l'environnement devait prendre 5 minutes...

![Time Compression](images/clock.jpg)

]

---

.left-column[
.footnote[@mariolet ]


  ## Conteneurs pour les développeurs
  ### Frustrations
]
.right-column[
<br>
Ces fois où tout marche nickel sur machine de notre collègue...

![Works on my machine](images/say-works-on-my-machine.jpg)

]

---

.left-column[
.footnote[@mariolet ]


## Conteneurs pour les développeurs
### Frustrations
### Docker
]
.right-column[
<br>
Docker nous permet de définir des environnements :
- Isolés
- Faciles à reproduire
<br><br>
![Lang Stacks](images/languagestacks.png)
<br>
(comme des VM quoi)
]

---

.left-column[
.footnote[@mariolet ]


## Conteneurs pour les développeurs
### Frustrations
### Docker
]
.right-column[
<br>
Oui comme des VMs.

Mais beaucoup moins gourmands en resources :
- Plus rapides
- Moins encombrant


![Lang Stacks](images/dexec.gif)
(création de 27 containers)

]

---

template: inverse

## FizzBuzz

---

.left-column[
.footnote[ @mariolet ]

  ## FizzBuzz
  ### Le jeu
]
.right-column[
<br><br>
![Swift](images/fizzbuzz.png)
]

---

.left-column[
.footnote[ @mariolet ]

  ## FizzBuzz
  ### Le jeu
  ### Le code
]
.right-column[
```java

public class FizzBuzz{

  public static void main(String[] args) {

    for(int i= 1; i <= 100; i++) {

      if (i % 15 == 0) {

        System.out.println("FizzBuzz");

      } else if (i % 3 == 0) {

        System.out.println("Fizz");

      } else if (i % 5 == 0) {

        System.out.println("Buzz");

      } else {

        System.out.println(i);

      }

    }
  }
}
```
]

---

.left-column[
.footnote[ @mariolet ]

  ## FizzBuzz
  ### Le jeu
  ### Le code
  ### Les VMs
]
.right-column[
<br><br>
# https://goo.gl/T6ZIEl
]


---

template: inverse

## 5 conteneurs pour 5 langages

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ### Le langage
]
.right-column[
![Swift](images/swift-logo-small.png)
<br><br>
- Développé par Apple

- La première version a été pubbliée en 2014

- Open Source depuis novembre 2015 pour iOS, OS X, Linux et FreeBSD

- Influencé par Objective-C, Rust, Haskell, Ruby, Python, C#

- Multi-paradigme : OO et functionnel

- Statique, fortement typé avec inférence de type

- Utilise le mechanisme de Automatic Reference Counting comme systeme de GC

- n.1 dansle classement StackOverflow 2015
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![Swift](images/swift-logo-small.png)
<br><br>
- Pattern: **Les sources sont partagées dans un volume**

- Image: `swiftdocker/swift`

- Build/run commands
```bash
docker run --rm \
    -v $(pwd):/src/ \
    swiftdocker/swift \
    swift /src/hello.swift
```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[
```swift
// Hello World
print("Hello World")


// Build et Execution d'une application
swift hello.swift


// Declaration d'une fonction
func factorial(n: Int) -> Int {
	// do something....
	return i
}


// Condition if
if val == 0 {
  // Some code here
} else if val == 1 {
  // Some code here
}


// Boocle for in
for num in 1...100 {//iterate from 1 to 100
  // do something....
}
```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
## 2. Rust
  ### Le langage
]
.right-column[
![Rust-logo](images/rust-logo-small.png)
<br>
- Développé par Mozilla Research depuis 2009

- Open Source : la plus part des contributions viennent de la communauté

- Influencé par C, C++, Haskell

- Multi-paradigme : impératif, fonctionnel, OO

- Statique, fortement typé avec inférence de type

- Performant comme du C++ (pas de garbage collector)

- Critiqué pour son instabilité

- n.1 dansle classement StackOverflow 2016

]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![Rust-logo](images/rust-logo-small.png)
<br><br>
- Pattern: **Le build docker fait un build de l'applicaiton** (variante on-build)

- Image: `mariolet/rust`
```Dockerfile
...
ONBUILD COPY / /src/
ONBUILD WORKDIR /src/
```

- Build/run commands
```bash
# Build
docker build -t hellorust .
# Run
docker run hellorust
```
]

---

.left-column[
.footnote[@mariolet ]

  ## 1. Swift
  ## 2. Rust
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[
```rust
// Hello World
fn main() {
    println!("Hello World!");
}


// Build et Execution d'une application
rustc hello.rs
./hello


// Declaration d'une fonction
fn factorial(n: i32) -> i32 {
	// do something....
	i // do not use `;` to return a value
}


// Condition if
if val == 0 {
  // Some code here
} else if val == 1 {
  // Some code here
}


// Boucle for in
for num in 1..101 { //iterate from 1 to 100
  // do something....
}

// Pour afficher un entier
println!("{}", i);

```
]

---

.left-column[
.footnote[ @mariolet ]

  ## 1. Swift
  ## 2. Rust
## 3. Haskell
  ### Le langage
]
.right-column[
![Haskell-logo](images/haskell-logo-small.png)
<br><br>
- La première version a été pubbliée en 1990

- Influencé par Miranda (langage purement fonctionnel mais propriétaire)

- C'est un standard ouvert (Haskell 2010) et l'implémentation principale est le Glasgow Haskell Compiler (GHC)

- Paradigme purement fonctionnel (données immuables)

- Statique, fortement typé avec inférence de type

- L'indentation est significative (**layout** vs `;`+`{}`)

- Les fonctions peuvent être déclarée de façon récursive
```haskell
factorial 1 = 1
factorial n = n * factorial (n-1)
```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ## 3. Haskell
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![Haskell-logo](images/haskell-logo-small.png)
<br><br>
- Pattern: **Run en background et exec all the things**

- Image: `haskell` (image officielle)

- Build/run commands
  ```bash
  docker run --name haskell -d \
              -v $(pwd):/src/ haskell \
              tail -f /dev/null
  #Build
  docker exec haskell ghc -o hello /src/hello.hs

  # Run
  docker exec haskell ./hello
  ```
]

---

.left-column[
.footnote[ @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ## 3. Haskell
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[
```haskell
-- Hello World
main = putStrLn "Hello, World!"

-- Build et Execution d'une application
-- ghc -o hello hello.hs
-- ./hello

-- Declaration d'une fonction
factorial n =
  -- do something ...
  i

-- Condition if
if val == 0
  then
    -- Some code here
  else if val == 1
    then
      -- Some code here

-- On utilise la récursion pour faire des boucles
printStringNTimes 0 = return ()
printStringNTimes n =
  do
   -- Do Something
   printStringNTimes (n-1)

-- Pour afficher un entier
print i

-- Pour calculer le modulo d'un entier
mod n 3

```

]

---

.left-column[
.footnote[@mariolet ]

  ## 1. Swift
  ## 2. Rust
  ## 3. Haskell
## 4. Go
  ### Le langage
]
.right-column[
![golang-logo](images/golang-logo-small.png)
- Développé par Google depuis 2006

- Open Source et disponible pour Linux, OS X, Windows, Solaris, \*BSD

- Influencé par C, Newsqueak, Modula, Smalltalk, Python

- Paradigme : impératif

- Statique, fortement typé avec inférence de type

- Langage conçu pour :
  - Des gros projets comme Java ou C++
  - Avoir les performances du C
  - Avoir des temps de build/run très rapide (comparables aux langage de scripting)

- Absence du concept de generics et de classes (mais supporte l'héritage avec les interfaces)
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ## 3. Haskell
  ## 4. Go
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![golang-logo](images/golang-logo-small.png)
<br><br>
- Patterns: **Le conteneur comme Runtime Environment**, **Copie du livrable dans l'image**

- Image: `scratch` (image officielle)

- Build/run commands
  ```bash
  # Build (cette fois-ci nous n'utiliserons Docker)
  CGO_ENABLED=0 GOOS=linux go build \
        -a -installsuffix cgo hello.go

  # Run
  docker build -t hellogo .
  docker run -d -p 9090:9090 hellogo
  ```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ## 3. Haskell
  ## 4. Go
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[
```go
// Hello World
package main
import "fmt"
func main() {
	fmt.Println("Hello, World!")
}

// Build et Execution d'une application
// go build hello.go && ./hello (mais aussi go run hello.go)

// Declaration d'une fonction
func factorial(n int) int {
	do something....
	return i
}

// Condition if
if val == 0 {
  // Some code here
} else if val == 1 {
  // Some code here
}

// Boucle for
for i := 1; i < 101; i++  {
  //iterate from 1 to 100
}
```
]

---

.left-column[
.footnote[ @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ...
## 5. JShell
  ### Le langage
]
.right-column[
![jshell-logo](images/jshell-logo-small.png)
<br><br>
- Développé par Oracle (JEP 222)

- Fait partie de OpenJDK 9, sera livré avec la JDK 9

- Influencé par les REPL (read-eval-print-loop) d'autres langages comme Scala, Ruby, JavaScript, Haskell, Clojure et Python

- C'est du Java donc OOP, statique, fortément typé

- Pas besoin de définir une classe et un main pour executer du code

- Les *snippets* peuvent référencer des variables, méthodes ou classes qui ne sont pas déclarés

- Au start-up un certain nombre de librairies sont importés automatiquement (`/imports`) et des méthodes sont prédéfinies (`/methods`)
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ...
  ## 5. JShell
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![jshell-logo](images/jshell-logo-small.png)
<br><br>
- Pattern: **Conteneur executable**

- Image: `java:9-jdk` (image officielle)

- Build/run commands
  ```bash
  # 'Installation' de la JShell
  alias jshell="docker run -ti --rm \
                        java:9-jdk \
                        jshell"

  # Execution de la JShell
  jshell
  ```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ...
  ## 5. JShell
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[

```bash
# Pour sortir
-> /exit

# Autres commandes
-> /list
-> /list all
-> /imports
-> /methods
-> /edit <item>
```

```java
// Hello World (pas besoin de main, ni de `;`)
printf("Hello, World")

// Condition if
if (val == 0) {
  // Some code here
} else if (val == 1) {
  // Some code here
}


// Boucle for in
for (int i = 1; i <= 100; i++) {
  // do something
}
```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ...
## 6. ArnoldC
  ### Le langage
]
.right-column[
![ArnoldC-logo](images/arnoldc-logo-small.jpeg)
<br><br>
- [http://lhartikk.github.io/ArnoldC/](http://lhartikk.github.io/ArnoldC/)

- Influencé par LOLCODE et des films de Arnold Schwarzenegger

- Paradigme : impératif

- Typage : un seul type est supporté (16 bit signed integer)

- Le main() de ArnoldC
  ```
  IT'S SHOWTIME
  YOU HAVE BEEN TERMINATED
  ```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 1. Swift
  ## 2. Rust
  ...
  ## 6. ArnoldC
  ### Le langage
  ### Le conteneur
]
.right-column[
![Docker](images/docker.png)
![ArnoldC-logo](images/arnoldc-logo-small.jpeg)
<br><br>
- Pattern: **Les sources sont partagées dans un volume**

- Image: `mariolet/arnoldc`

- Build/run commands
  ```bash
  # Build and run
  docker run --rm \
      -v $(pwd):/src/ \
      mariolet/arnoldc \
      hello.arnoldc
  ```
]

---

.left-column[
.footnote[https://goo.gl/T6ZIEl | @mariolet ]

  ## 6. ArnoldC
  ### Le langage
  ### Le conteneur
  ### Cheat Sheet
]
.right-column[
```
// Hello World
IT'S SHOWTIME
TALK TO THE HAND "Hello, World"
YOU HAVE BEEN TERMINATED


// Build et Execution d'une application
java -jar /arnoldc/ArnoldC.jar -run hello.arnoldc


// Condition if
BECAUSE I'M GOING TO SAY PLEASE value
[statements]
BULLSHIT
[statements]
YOU HAVE NO RESPECT FOR LOGIC


// Boucle for in
STICK AROUND value
[statements]
CHILL

// operations
GET UP operand // firstOperand + operand
YOU'RE FIRED operand // firstOperand * operand

...
```
]

---

template: inverse

## Conclusion

---
class: center
<br><br>
![fivelangs-logo](images/fivelangs.png)

--

<br><br>
![Docker](images/docker.png)

*Les sources sont partagées dans un volume*

*Le build docker fait un build de l'application*

*Run en background et exec all the things*

*Le conteneur comme Runtime Environment*

*Copie du livrable dans l'image*

*Conteneur executable*

---

## Resources

- [A Swift Tour](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html)

- [The Rust Programming Language Book](https://doc.rust-lang.org/stable/book/)

- [Haskell wiki list of Haskell tutorials](https://wiki.haskell.org/Tutorials)

- [A tour of Go](https://tour.golang.org/)

- [JEP 222: jshell: The Java Shell (Read-Eval-Print Loop)](http://openjdk.java.net/jeps/222)

- [ArnoldC sur GitHub](https://github.com/lhartikk/ArnoldC/wiki/ArnoldC)

---

template: inverse

## merci

http://l0rd.github.io/talks/containers-and-languages

[@mariolet]
