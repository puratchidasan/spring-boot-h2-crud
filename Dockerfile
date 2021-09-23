FROM openjdk:8-jdk-alpine
EXPOSE 8088
ARG JAR_FILE=target/spring-boot-h2-crud-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]