mvn clean package
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 770629738917.dkr.ecr.us-east-2.amazonaws.com
docker build -t java-11-test .
docker tag java-11-test:latest 770629738917.dkr.ecr.us-east-2.amazonaws.com/java-11-test:latest
docker push 770629738917.dkr.ecr.us-east-2.amazonaws.com/java-11-test:latest