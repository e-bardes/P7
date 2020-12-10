### "Développer le nouveau système d'information de la bibliothèque d'une grande ville:"
* Le projet comporte 2 projets multi-modules.
* L'un se nomme "api" et comporte tous les modules gérant le stockage et le partage d'informations depuis une base de données.
* L'autre s'appelle "applications" et contient l'application web, le batch, et le client rest permettant de communiquer l'api rest.

### Languages, frameworks et technlogies utilisés:
* Java (JDK 11)
* Spring Boot
* Spring MVC (pour les controllers de la webapp et les restControllers de l'api)
* Spring Data Jpa
* Postgresql
* Spring Security (pour l'authentification gérée au niveau de la webapp)
* Spring Batch
* Thymeleaf
* FreeMarker (pour le template des mails envoyés quotidiennement par le batch)
* Bootstrap

### Procédure de déploiement du code:
1. Cloner le projet
2. Créer une base de données et la remplir avec les scripts de génération des tables et le jeu de données situés à la racine du dépôt.
3. Le module "rest" contient un fichier "application.properties" qui possède les propriétés d'accès à une base de données:
  * url: l'url d'accès qui diffère en fonction de la base de données choisie (jdbc:postgresql://localhost:5432/"nomDeLaBaseDeDonnees" pour postgresql)
  * username: le nom d'utilsateur (postgres par défaut pour postgresql)
  * password: le mot de passe
  * driverClassName: ce paramètre dépend de la base de données utilisée (org.postgresql.Driver pour postgresql)
4. [Installer Tomcat 9.0](https://tomcat.apache.org/download-90.cgi)
5. Fixer les variables d'environnements:
  * CATALINA_HOME (qui a pour valeur le répertoire du serveur)
  * JAVA_HOME (qui a pour valeur le chemin du jdk. Installer également le jdk 11 pour que les programmes s'éxécutent avec celui-ci)
6. Au niveau des modules "rest", "webapp", lancer la commande "mvn clean package". Si le build échoue, lancer la commande à la racine des projets "api" et "applications".
7. "rest" et "webapp" contiennent un fichier War (dans le dossier "target") à placer dans le dossier "webapps" du serveur tomcat. Par défaut les deux applications utilisent le même port.
8. Renommer ces deux fichiers en enlevant le numéro de version: "-1.0"
9. Lancer le serveur tomcat en éxécutant le fichier "startup.bat" ou "startup.sh" (en fonction du système d'exploitation).
10. Le module batch contient un fichier "application.properties" avec la propriété "cronExpression" qui détermine quand et à quelle fréquence l'action de l'envoi de mail va s'éxécuter. Par défaut il se lance une fois par jour à 03H00. Il est possible de modifier à "0 * * * * *" par exemple pour une éxécution toutes les minutes afin de tester son fonctionnement.
11. Lancer "mvn clean package" à la racine du module batch.
12. Le module "batch" contient 2 Jar dans le dossier "target". Celui qui nous intéresse est "batch-1.0.jar" qui possède toutes les dépendances dont il a besoin pour fonctionner. Il s'éxécute grâce à la commande "java -jar batch-1.0.jar"
13. Pour tester l'envoi de mails par le batch, on peut se servir de fakeSmtp: https://github.com/Nilhcem/FakeSMTP. Le cloner puis utiliser la commande "mvn package" et enfin le lancer à la racine du dossier: "java -jar target/fakeSMTP-2.1-SNAPSHOT.jar". Par défaut le fichier "application.properties" du batch a défini le port de fakeSmtp à 25.
