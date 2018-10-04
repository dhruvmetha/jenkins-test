pipeline {
    agent none
    stages {
        // stage('scm'){
        //     steps {
        //         sh 'ls'
        //         //sh 'git checkout master'
        //     }
           
        // }

        stage('node'){
           agent {
               dockerfile {
                   dir 'node'
                   label 'node-image'
               }
           }

           steps {
               sh 'npm --version'
           } 
        }


        stage('mongo'){
           agent {
               dockerfile {
                   dir 'mongo'
                   label 'mongo-image'
               }
           }

           steps {
               sh 'mongod --version'
           } 
        }
    }
}
