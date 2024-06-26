pipeline {
    agent any
    environment {
        PATH = "/path/to/nodejs/bin:$PATH"
    }
    stages {
        stage('Check SCM') {
            steps {
                checkout scm
            }
        }
        stage('Version') {
            steps {
                echo "Empezando el install..."
                sh "npm install"
            }
        }
    }
}
