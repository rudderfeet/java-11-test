pipeline {

    environment {
      registry = "scottmccrory/java-11-test"
      registryCredential = 'dockerhub'
    } 

    // See https://www.edureka.co/community/55640/jenkins-docker-docker-image-jenkins-pipeline-docker-registry
    agent { label 'docker' }

    stages {

        stage('Get Application Sources') {

            steps {
                git 'https://github.com/rudderfeet/java-11-test.git'
            }

        }

        stage('Build and Test Application') {

            tools {
                maven 'Maven_3.6.3'
            }

            steps {
                sh 'mvn clean verify'
            }

        }

        stage('Build Docker Image') {

            steps {
                script {
                    docker.build registry
                }
            }

        }

        stage('Deploy Docker Image') {

            steps {

                script {
                    docker.withRegistry('', registryCredential ) {
                        sh "docker push $registry"
                    }
                }

            }

        }

        stage('Remove Unused Docker Image') {

            steps{
                sh "docker rmi $registry"
            }

        }

    }

}