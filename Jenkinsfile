pipeline {
    agent { docker { image 'node:6.3' } }
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
