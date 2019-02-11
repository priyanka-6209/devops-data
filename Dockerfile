FROM java:8
RUN apt-get update
RUN apt-get install -y maven
# RUN mvn install:install-file -Dfile=ojdbc14.jar -DgroupId=com.oracle -DartifactId=ojdbc14 -Dversion=10.2.0.4.0 -Dpackaging=jar
WORKDIR ./
ADD pom.xml ./pom.xml
ADD src /src
RUN ["mvn", "package"]
EXPOSE 8080
ADD /target/SpringBatchExample-1.0-SNAPSHOT.jar SpringBatchExample-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "SpringBatchExample-1.0-SNAPSHOT.jar"]
