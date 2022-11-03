FROM tomcat:9.0.68-jre8
ADD docker-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/myapp.war
CMD ["catalina.sh", "run"]