FROM openjdk:11-slim

# Ideally run the app as non-root!
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar","us.mccrory.java11test.Java11TestApplication"]