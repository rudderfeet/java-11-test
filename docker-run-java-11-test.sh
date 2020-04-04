mvn clean package
docker build -t scottmccrory/java-11-test .
docker run \
    --name java-11-test \
    --restart always \
    --network sdm-net \
    -p 8081:8081 \
    -d scottmccrory/java-11-test
docker push scottmccrory/java-11-test