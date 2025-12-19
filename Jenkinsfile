pipeline {
    agent any

    tools {
        jdk 'jdk21'
        maven 'maven_3_9_12'
    }

    environment {
        IMAGE_NAME = "ourimirayen/student-management:latest"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Ourimirayen/DevOps_OurimiRayen_4Sleam2.git'
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t %IMAGE_NAME% ."
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'docker-hub-creds',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )
                ]) {
                    bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASS%'
                    bat "docker push %IMAGE_NAME%"
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                kubernetesDeploy(
                    configs: 'deploymentservice.yaml',  // ton fichier YAML
                    kubeconfigId: 'devopsourimi',       // Jenkins credential ID pour kubeconfig
                    enableConfigSubstitution: true
                )
            }
        }
    }
}
