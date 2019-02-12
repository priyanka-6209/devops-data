FROM java:8

VOLUME /tmp
# Make port 8080 available to the world outside this container
EXPOSE 8080
# The application's jar file
ARG JAR_FILE=target/SpringBatchExample-1.0-SNAPSHOT.jar
# Add the application's jar to the container
ADD ${JAR_FILE} SpringBatchExample-1.0-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "SpringBatchExample-1.0-SNAPSHOT.jar"]
