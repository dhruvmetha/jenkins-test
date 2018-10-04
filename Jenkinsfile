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
    def nodeapp
    def mongoapp
    stage('build'){
        nodeapp = docker.build("node-image", "./node")
        nodeapp.inside {
            sh 'npm --version'
        }
    }
}