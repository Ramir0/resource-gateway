FROM openjdk:17.0.1-jdk-slim-buster

WORKDIR /app
COPY target/api-gateway-1.0.0.jar resource-gateway.jar
EXPOSE 8080

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "resource-gateway.jar"]
