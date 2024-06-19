pipeline {
    agent any

    environment {
        CI = 'true'
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
                sh 'npm install'
            }
        }
    }
}