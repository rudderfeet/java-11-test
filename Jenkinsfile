pipeline {

    environment {
      registry = "scottmccrory/java-11-test"
      registryCredential = 'dockerhub'
    } 

    agent docker

    stages {

        stage('Get Sources') {

            steps {
                git 'https://github.com/rudderfeet/java-11-test.git'
            }

        }

        stage('Build and Test') {

            tools {
                maven 'Maven_3.6.3'
            }

            steps {
                sh 'mvn clean verify'
            }

        }

        stage('Building image') {

            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }

        }

    }

}