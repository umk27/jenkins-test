FROM bellsoft/liberica-openjdk-alpine:17.0.3.1-2
COPY /target/jenkins-test-0.0.1-SNAPSHOT.jar /jenkins-test.jar
CMD ["java", "-jar", "/jenkins-test.jar"]