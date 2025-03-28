#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/SkeletonWebApp-1.0-SNAPSHOT.jar /usr/local/lib/WebApp.jar
EXPOSE 8080 
ENTRYPOINT ["java", "-jar", "/usr/local/lib/WebApp.jar"]
