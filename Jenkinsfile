pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Test Completed'
                echo "Listing Jenkins environment variables:"
                env.each { key, value ->
                  echo "${key} = ${value}"
                }
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
