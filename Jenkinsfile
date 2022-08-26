pipeline {
    agent { label 'bellsoft/liberica-openjdk-alpine:17.0.3.1-2'}

    tools {
       maven "maven3.8"
       jdk "jdk-17"
    }

    stages {
        stage('1-Build') {
            steps {
                sh "mvn -version"
                sh "mvn clean package"
                sh "docker build -t umk27/jenkins-test:latest ."
                sh "docker push umk27/jenkins-test:latest"
            }
        }
        stage('2-Deploy') {
            steps {
                sh "ssh jenkins-test@92.63.97.213 'cd www/jenkins-test' 'ls -la'"
            }
        }
    }
    post {
        always{
            cleanWs()
        }
   }
}