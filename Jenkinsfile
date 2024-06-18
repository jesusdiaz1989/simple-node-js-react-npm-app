pipeline {
    agent any

    tools {nodejs "nodejs"}

    stages {
        stage('Build') {
            steps {
                sh 'npm config ls'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}