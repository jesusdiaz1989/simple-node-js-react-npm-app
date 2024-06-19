pipeline {
    agent any
    
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:7.4'
                }
            }
            steps {
                echo "Branch is ${env.BRANCH_NAME}..."

            withNPM(npmrcConfig:'my-custom-npmrc') {
                    echo "Performing npm build..."
                    sh 'npm install'
                }
            }
        }
    }
}