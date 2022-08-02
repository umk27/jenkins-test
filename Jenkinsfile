pipeline {
    agent any

    tools {
       maven "maven3.8"
       jdk "jdk-17"
    }

    stages {
        stage('1-Build') {
            steps {
                sh "mvn -version"
                sh "mvn clear package"
            }
        }
    }
    stages {
            stage('2-Deploy') {
                steps {
                    sh "ssh jenkins-test@92.63.97.213"
                    sh "ssh ls -la"
                }
            }
        }
    post {
        always{
            cleanWs()
        }
   }
}