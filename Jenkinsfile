pipeline {
    agent any

    stages {
        stage("Build") {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t ecommerce-api .'
            }
        }

        stage("SetUp"){
            sh 'docker stop api'
            sh 'docker rm api'
            sh 'docker run -dp 8081:8081 --name api ecommerce-api'   
        }
    }
}