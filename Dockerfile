FROM arm32v7/adoptopenjdk:11-jre-hotspot

VOLUME /tmp

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app

EXPOSE 8081

ENTRYPOINT ["java","-cp","app:app/lib/*","us.mccrory.java11test.Java11TestApplication"]