pipeline {
    agent any

    stages {
        stage('Copy the required files from Github to jenkins server') {
            agent { label 'jenkins'}
            steps {
                sh 'rsync -a /var/lib/jenkins/workspace/demo/Dockerfile root@172.25.250.11:/opt/docker'
                echo "Running Build ${env.BUILD_ID} on ${env.JENKINS_URL}"  
                echo 'Image Build Completed'
                }
            }
        stage('removing the old docker container') {
            steps {
               sh 'ssh root@172.25.250.11 "docker container rm -f $(docker ps -aq)"'
               echo 'Old containers removed'
               echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
       }
        stage('Building the docker image') {
            steps {
               sh 'ssh root@172.25.250.11 "cd /opt/docker; docker build -t web:v2 ."'
               echo 'Image building has been Completed'
               echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
       }
        stage('Deploy as a container') {
            steps {                
               sh 'ssh root@172.25.250.11 "docker run -itd -p 82:80 --name web web:v2"'
               sh 'curl -I http://172.25.250.11:82'
               echo 'Production Completed'
               echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
    }
}
