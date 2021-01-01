mvn clean package
docker build -t scottmccrory/java-11-test -f Dockerfile
docker push scottmccrory/java-11-test
