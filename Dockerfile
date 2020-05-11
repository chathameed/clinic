
FROM maven:3.5-jdk-8-slim as mavenBuild
COPY src /usr/src/myapp/src
COPY pom.xml /usr/src/myapp
RUN mvn -f /usr/src/myapp/pom.xml clean package 


# use a tomcat image
FROM tomcat:latest as runtime

WORKDIR /usr/src/app

COPY --from=mavenBuild /usr/src/myapp/target/*.war /usr/local/tomcat/webapps/petclinic.warEXPOSE 8080


#COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
