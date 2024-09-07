FROM maven:3.8.5-openjdk-11 AS builder

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean install


#------------------>

FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=builder /app/target/sample-0.0.1-SNAPSHOT.jar  /app/app.jar

# Expose a port if your application listens on a specific port (e.g., 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
