FROM maven:3.8.4-jdk-11 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -f pom.xml clean package

FROM openjdk:11
COPY --from=build /workspace/target/*.war app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.war", "com.webDev.backend.WebDevBackendApplication"]
