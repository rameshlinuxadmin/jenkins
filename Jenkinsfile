pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                    echo "Building application..."
                    # ./mvnw clean package
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    echo "Running tests..."
                    # ./mvnw test
                '''
            }
        }

        stage('Docker Build') {
            when {
                changeRequest()
            }
            steps {
                sh '''
                    docker build -t zudio:pr-${BUILD_NUMBER} .
                '''
            }
        }
    }

    post {
        success {
            echo "PR validation successful"
        }

        failure {
            echo "PR validation failed"
        }
    }
}
