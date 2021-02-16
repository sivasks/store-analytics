FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /target/store-analytics-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]