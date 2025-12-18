# Use Eclipse Temurin JDK 21
FROM eclipse-temurin:21-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the built JAR from target
COPY target/student-management-system.jar student-management-system.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java","-jar","student-management-system.jar"]
