# use a tomcat image
FROM tomcat:latest



COPY petclinic.war /usr/local/tomcat/webapps/petclinic.war
