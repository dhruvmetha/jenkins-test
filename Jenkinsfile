node {
    checkout scm
    stage('build'){
        sh 'chmod +x build.sh'
        sh './build.sh'
    }

    stage("test"){
        sh 'chmod +x test.sh'
        sh './test.sh'
    }

    stage('rm'){
        sh 'docker stop mongo node'
        sh 'docker rm mongo node' 
        sh 'docker network rm mynet'
    }
}