pipeline {
    agent any
    tools {
        nodejs "NodeJS_14" // El nombre que le diste a la instalación de NodeJS
    }
    stages {
        stage('Check SCM') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo "Empezando el install..."
                sh "npm install"
            }
        }
    }
}
