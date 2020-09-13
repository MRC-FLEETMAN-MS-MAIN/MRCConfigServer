FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY apiKey.jks /home/apiKey.jks 
COPY UnlimitedJCEPolicyJDK8/*  /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
COPY target/MRC-ConfigServer-0.0.1-SNAPSHOT.jar ConfigServer.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"]