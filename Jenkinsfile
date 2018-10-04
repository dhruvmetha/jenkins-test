pipeline {
    agent { 
        docker { 
            image 'node'
            args '-p 3000:3000 -p 5000:5000' 
            } 
        }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
        stage('ls') {
            steps {
                sh 'ls'
            }
        }
        stage('install') {
            steps {
                sh 'npm install'
            }
        }
    }
}
