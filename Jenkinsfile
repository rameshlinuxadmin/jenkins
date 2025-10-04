pipeline {
    agent any

    stages {
        stage('Test') {
            agent { label 'jenkins'}
            steps {
                sh 'rsync -a /var/lib/jenkins/workspace/demo/ root@172.25.250.11:/opt/docker'
                echo "Running Build ${env.BUILD_ID} on ${env.JENKINS_URL}"  
                echo 'Image Build Completed'
                }
            }
    }
}
