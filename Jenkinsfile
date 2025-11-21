pipeline {
    // Définir l'agent Jenkins sur lequel ce pipeline va s'exécuter
    agent any  // "any" = n'importe quel agent disponible

    // Déclaration des outils nécessaires
    tools {
        jdk 'Java-17'    // Utiliser le JDK configuré sous le nom "Java-17" dans Jenkins
        maven 'Maven-3'  // Utiliser Maven configuré sous le nom "Maven-3" dans Jenkins
    }

    // Définition des étapes du pipeline
    stages {
        // Étape 1 : Compilation et build du projet
        stage('Build') {
            steps {
                // mvn clean install :
                // - clean → supprime les anciennes compilations
                // - install → compile, teste et installe le projet dans le repo local Maven
                sh 'mvn clean install'
            }
        }

        // Étape 2 : Exécution des tests unitaires
        stage('Test') {
            steps {
                // mvn test → lance tous les tests définis dans le projet
                sh 'mvn test'
            }
        }
    }
}
