mvn clean package
docker build -t smccrory/java-11-test .
docker run \
    --name java-11-test \
    --restart always \
    --network sdm-net \
    -p 8081:8081 \
    -d smccrory/java-11-test
