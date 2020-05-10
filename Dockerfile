# use a tomcat image
FROM tomcat:latest

WORKDIR /usr/src/app

COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
