node {

    stage('Clone sources') {
        git url: 'https://github.com/rudderfeet/java-11-test.git'
    }

    stage("Compilation") {
        sh "mvn clean install -DskipTests"
    }
        
    stage("Tests") {
        parallel 'Unit tests': {
            stage("Runing unit tests") {
                try {
                    sh "mvn test -Punit"
                } catch(err) {
                    step([$class: 'JUnitResultArchiver', testResults: 
                        '**/target/surefire-reports/TEST-*UnitTest.xml'])
                    throw err
                }
                step([$class: 'JUnitResultArchiver', testResults: 
                    '**/target/surefire-reports/TEST-*UnitTest.xml'])
            }
        }, 'Integration tests': {
            stage("Runing integration tests") {
                try {
                    sh "mvn test -Pintegration"
                } catch(err) {
                    step([$class: 'JUnitResultArchiver', testResults: 
                        '**/target/surefire-reports/TEST-'
                        + '*IntegrationTest.xml'])
                    throw err
                }
                step([$class: 'JUnitResultArchiver', testResults: 
                    '**/target/surefire-reports/TEST-'
                    + '*IntegrationTest.xml'])
            }
        }            

    }

}