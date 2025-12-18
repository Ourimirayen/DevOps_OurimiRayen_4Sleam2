FROM eclipse-temurin:21-jdk-jammy
COPY target/student-management-system.jar student-management-system.jar
ENTRYPOINT ["java","-jar","/student-management-system.jar"]
EXPOSE 8080