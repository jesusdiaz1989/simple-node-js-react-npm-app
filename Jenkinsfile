pipeline {
    agent any

    tools {nodejs "node"}

    environment {
        CI = 'true'
    }
    stages {
        stage('Check SCM') {
            steps {
                checkout scm
            }
        }
    }
}