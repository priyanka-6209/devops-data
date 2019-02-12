FROM java:8
#RUN apt-get update
#RUN apt-get install -y maven
# RUN mvn install:install-file -Dfile=ojdbc14.jar -DgroupId=com.oracle -DartifactId=ojdbc14 -Dversion=10.2.0.4.0 -Dpackaging=jar
#RUN mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc14 -Dversion=10.2.0.3.0 -Dpackaging=jar -Dfile=ojdbc14-10.2.0.3.0.jar
#WORKDIR ./
#RUN mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc14 -Dversion=10.2.0.3.0 -Dpackaging=jar -Dfile=ojdbc14-10.2.0.3.0.jar
#ADD pom.xml ./pom.xml
#ADD src ./src
#RUN ["mvn", "package"]
VOLUME /tmp
# Make port 8080 available to the world outside this container
EXPOSE 8080
# The application's jar file
ARG JAR_FILE=target/SpringBatchExample-1.0-SNAPSHOT.jar
# Add the application's jar to the container
ADD ${JAR_FILE} SpringBatchExample-1.0-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "SpringBatchExample-1.0-SNAPSHOT.jar"]
#CMD ["java","-jar","SpringBatchExample-1.0-SNAPSHOT.jar"]
#CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "SpringBatchExample-1.0-SNAPSHOT.jar"]
