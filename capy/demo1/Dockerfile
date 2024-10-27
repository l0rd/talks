FROM tomcat:8.0.28-jre8

RUN useradd -d /home/tomcat -m -s /bin/bash tomcat

# TESTS
RUN getent passwd tomcat
RUN bash -c "test -f /home/tomcat/.profile"

# TESTS
RUN bash -c "test ! -f /usr/local/tomcat/webapps/hello-nantes.war"

COPY hello-nantes.war /usr/local/tomcat/webapps/

# TESTS
RUN bash -c "test -f /usr/local/tomcat/webapps/hello-nantes.war"

CMD catalina.sh run
