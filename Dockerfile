FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=work-0.0.1-SNAPSHOT.jar
COPY target/${JAR_FILE} /usr/share/${JAR_FILE}
ADD /usr/share/${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
