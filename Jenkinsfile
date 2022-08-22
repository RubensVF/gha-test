pipeline {
    agent any

    stages {
        stage("Build") {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t ecommerce-api .'
            }
        }
    }
}