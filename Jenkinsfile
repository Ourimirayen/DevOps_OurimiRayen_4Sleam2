pipeline {
    agent any
    tools {
        jdk 'Java-17'
        maven 'Maven-3'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
