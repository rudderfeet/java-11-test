FROM arm32v7/adoptopenjdk:11-jre-hotspot

VOLUME /tmp

ARG DEPENDENCY=target/dependency
COPY ./target/dependency/BOOT-INF/lib /app/lib
COPY ./target/dependency/META-INF /app/META-INF
COPY ./target/dependency/BOOT-INF/classes /app

EXPOSE 8081

ENTRYPOINT ["java","-cp","app:app/lib/*","us.mccrory.java11test.Java11TestApplication"]