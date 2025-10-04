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
        stage('Stage') {
            steps {
               sh 'ssh root@172.25.250.11 "cd /opt/docker; docker build -t web:v2 ."'
               sh 'ssh root@172.25.250.11 "docker run -itd -p 82:80 --name web web:v2"'
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
