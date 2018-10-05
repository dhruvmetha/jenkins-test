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
    stage('build'){
        sh 'chmod +x build.sh'
        sh './build.sh'
    }
}