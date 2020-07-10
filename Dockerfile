FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "-Djava.security.egd=file:/dev/./urandom", "/app.jar"]
EXPOSE 8887
