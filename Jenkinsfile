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
                sh "mvn clean package"
                sh "sudo docker build -t umk27/jenkins-test:latest ."
                sh "sudo docker push umk27/jenkins-test:latest"
            }
        }
        stage('2-Deploy') {
            steps {
                sh "ssh jenkins-test@92.63.97.213 'docker-compose -f ./jenkins-test/docker-compose.yaml up -d'"
            }
        }
    }
    post {
        always{
            cleanWs()
        }
   }
}