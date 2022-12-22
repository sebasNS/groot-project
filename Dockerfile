FROM openjdk:17.0.5
EXPOSE 8080
COPY . /src/java
WORKDIR /src/java
ADD target/groot-integration.jar groot-integration.jar
ENTRYPOINT ["java","-jar","/groot-integration.jar"]