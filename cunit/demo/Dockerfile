FROM tomcat
EPHEMERAL bash -c "test -f /usr/local/tomcat/bin/catalina.sh"

RUN useradd tomcat
EPHEMERAL bash -c "getent passwd tomcat"

COPY hello-technozaure.war /usr/local/tomcat/webapps/
EPHEMERAL bash -c "test -f /usr/local/tomcat/webapps/hello-technozaure.war"

ENTRYPOINT catalina.sh
CMD run












