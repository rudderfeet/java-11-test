pipeline {

    agent any

    stages {

        stage('Source') {

            steps {
                git 'https://github.com/digitalvarys/jenkins-tutorials.git'
            }

        }

        stage('Compile') {

            tools {
                maven 'Maven_3.6.3'
            }

            steps {
                sh 'mvn clean verify'
            }

        }

    }

}