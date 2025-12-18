FROM openjdk:17
EXPOSE 8080
ADD target/student-management-system.jar student-management-system.jar
ENTRYPOINT ["java","-jar","student-management-system.jar"]
