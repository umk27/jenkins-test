pipeline {
    agent any

    stages {
        stage('1-Build') {
            steps {
                sh "mvn -version"
                sh "mvn clean package"
            }
        }
    post {
        always{
            cleanWs()
        }
   }
}