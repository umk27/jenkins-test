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
                sh "mvn package"
            }
        }
    }
    post {
        always{
            cleanWs()
        }
   }
}