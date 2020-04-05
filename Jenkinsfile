pipeline {

    agent {
        docker { image 'maven:3-jdk-11-slim' }
    }

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

    }

}