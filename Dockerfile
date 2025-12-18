# Use OpenJDK 21 slim image
FROM eclipse-temurin:21-jdk-jammy

# Expose port for Spring Boot
EXPOSE 8080

# Copy the built jar file into the container
COPY target/student-management-system.jar student-management-system.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "student-management-system.jar"]
