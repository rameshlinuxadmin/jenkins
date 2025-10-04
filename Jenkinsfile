pipeline {
    agent any

    stages {
        stage('Test') {
            agent { label 'Built-In Node'}
            steps {
                sh 'rsync -a /var/lib/jenkins/workspace/demo/ root@172.25.250.11:/opt/docker'
                echo "Running Build ${env.BUILD_ID} on ${env.JENKINS_URL}"  
                echo 'Image Build Completed'
                }
            }
        stage('Stage') {
            agent { label 'docker'}
            steps {                
                sh 'cd /opt/docker'
                sh 'cat /opt/docker/Dockerfile'
                
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
