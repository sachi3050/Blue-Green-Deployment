# Use official OpenJDK 17 base image (lightweight Alpine version)
FROM eclipse-temurin:17-jdk-alpine

# Expose app port
EXPOSE 8081

# Set environment variable for application home
ENV APP_HOME=/usr/src/app

# Create app directory
WORKDIR $APP_HOME

# Copy the built Spring Boot JAR file into container
COPY target/*.jar app.jar

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
