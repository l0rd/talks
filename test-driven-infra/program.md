1. Execute a simple maven build with jenkins
2. Check that swarm is working fine starting some containers in the cluster (without jenkins)
3. Test the plugin



1. Imaginez le monde en 2020 - le data center xxxx de (apple/google/microsof) - le plus grand au monde -  - imaginez tous les serveurs - imaginez les applications qui tournent dedans - regardez bien - regardez mieux - tout tourne dans des conteneurs Docker
   
2. tout ce qui tourne sur ces serveur est défini dans des Dockerfile.
   
3. Les Dockerfile sont des fichiers de code source ou sont définis tous les détails de notre infrastructure
   
4. Les Dockerfiles peuvent être des fichiers longs et difficiles à maintenir
   
5. Comme tous les fichiers de code source on les versionne dans notre repo git, dans le meme repertoire de notre code applicatif
   
6. Notre code applicatif nous sommes habitués à le tester - meme à commencer par écrire les tests en premier - à pratiquer du TDD
   
7. Pour quelle raison ne faisait-on pas la même chose avec le code de nostre infrastructure - nos Dockerfile. 
   
8. Est-ce nous souhaitons découvrir un bug le jour du deploiment? => gif
   
   Ou bien est-ce parce que  c'est agréable de faire des changement sans se proteger par des tests ?
   
   Ou encore ne veut-on pas que les personnes qui vont venir après nous ne s'approprient du code que au bout de 2 semaines ?
   
9. Bref il faut des tests pour notre infrastructure, il faut faire du test driven infrastructure et nous pouvons commencer dés maintenant
   
   DEMO
   
   ​
   
   ​
   
   ​