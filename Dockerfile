# use a tomcat image
FROM tomcat:latest



COPY ./target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
