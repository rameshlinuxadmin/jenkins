pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                rsync -a /var/lib/jenkins/workspace/demo/ docker:/opt/docker
                echo "Running Build ${env.BUILD_ID} on ${env.JENKINS_URL}"  
                echo 'Image Build Completed'
                }
            }
        stage('Stage') {
            agent { label 'docker'}
            steps {                
                cd /opt/docker
                cat /opt/docker/Dockerfile
                
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
