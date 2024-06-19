pipeline {
    agent {
        docker {
            image 'node:7.4'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                echo "Empezando el install..."
                sh 'npm install'
            }
        }
    }
}