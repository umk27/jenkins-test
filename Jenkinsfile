pipeline {
    agent any

    tools {
       maven "maven3.8"
    }

    stages {
        stage('1-Build') {
            steps {
                sh "mvn -version"
                sh "mvn clean package"
            }
        }
    }
    post {
        always{
            cleanWs()
        }
   }
}