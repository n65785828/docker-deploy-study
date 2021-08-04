FROM openjdk:8u302-jre-slim-buster
WORKDIR /home/apps
ADD docker-0.0.1-SNAPSHOT.jar app.jar
VOLUME ["/home/apps/hello"]
EXPOSE 89
ENTRYPOINT ["java","-jar"]
CMD ["app.jar"]