pipeline {
    agent any

    stages {
         stage('Copy the required files from Github to jenkins server') {
            steps {
                sh 'sudo cp -r /var/lib/jenkins/workspace/demo/Dockerfile /opt/docker'
                sh 'sudo docker ps -aq | xargs -r sudo docker rm -f'
                sh 'cd /opt/docker; sudo docker build -t web:v2 .'
                sh 'sudo docker run -d -p 82:80 --name web web:v2'
                echo 'Image Build Completed'
                }
            }
    }
}
