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
        stage('Run') {
            steps {
                // Run the Docker container exposing port 3000
                script {
                    def image = docker.image("simple-node-js-react-npm-app:${env.BUILD_ID}")
                    image.run('-p 3000:3000')
                }
            }
        }
    }
}
