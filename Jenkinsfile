// pipeline {
//     agent none
//     stages {
//         // stage('scm'){
//         //     steps {
//         //         sh 'ls'
//         //         //sh 'git checkout master'
//         //     }
           
//         // }

//         stage('node'){
//            agent {
//                dockerfile {
//                    dir 'node'
//                }
//            }

//            steps {
//                sh 'npm --version'
//            } 
//         }


//         stage('mongo'){
//            agent {
//                dockerfile {
//                    dir 'mongo'
//                }
//            }

//            steps {
//                sh 'mongod --version'
//            } 
//         }
//     }
// }

node {
    checkout scm
    def nodeapp
    def mongoapp
    stage('build'){
        nodeapp = docker.build("node-image", "./node")
        mongoapp = docker.build("mongo-image", "./mongo")
    }

    stage('run'){
        sh 'docker run -d -u root --name mongo -p 27017:27017 mongo-image'
        nodeapp.inside {
            sh 'pwd'
        }
        sh 'docker run -d -u root --name node -p 3000:3000 node-image'
        mongoapp.inside {
            sh 'pwd'
        }
    }

    stage('test') {
        nodeapp.inside{
            sh 'ls'
            sh 'pwd'
        }
    }
}