# use a tomcat image
FROM tomcat:latest

WORKDIR /usr/src/app

RUN mvn jetty:run-war
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
