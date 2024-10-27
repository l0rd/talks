FROM tomcat:8.0.28-jre8

RUN useradd -d /home/tomcat -m -s /bin/bash tomcat




COPY hellorouen.war /usr/local/tomcat/webapps/


CMD catalina.sh run
