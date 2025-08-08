# Use OpenJDK 17 runtime
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy built JAR from Maven target
COPY target/*.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
