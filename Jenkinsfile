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
        stage('Version') {
            steps {
                echo "Empezando el install..."
                nodejs(nodeJSInstallationName: 'UI') {
                   sh "npm install && npm install --only=dev && npm run build --${params.buildenv}"
                }
            }
        }
    }
}
