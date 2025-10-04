pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Testing Completed'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"                   
                }
            }
        stage('Stage') {
            steps {
                echo 'Staging Completed'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Prod') {
            steps {
                echo 'Production Completed'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
    }
}
