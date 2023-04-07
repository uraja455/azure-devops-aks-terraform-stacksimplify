FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /home/app/target/usermgmt-webapp.war /usr/local/tomcat/usermgmt-webapp.war
#COPY ./target/usermgmt-webapp.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]