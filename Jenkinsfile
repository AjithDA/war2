pipeline {
    agent any

    tools{
        maven 'maven'
    }

    stages{
        stage('Check & remove container'){
            steps{
                script{
                    def containerExists = sh(script: "docker ps -q -f name=ajju", returnStdout: true).trim()
                    if (containerExists) {
                    sh "docker stop ajju"
                    sh "docker rm ajju"
                    }
                }
            }
        }
        stage('Build package'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Create image'){
            steps{
                sh 'sudo docker build -t app /var/lib/jenkins/workspace/job/'
            }
        }
        stage('Assign tag'){
            steps{
                sh 'docker tag app ajith724/docker'
            }
        }
        stage('Push to dockerhub'){
            steps{
                sh 'echo "ajith123456" | docker login -u "ajith724" --password-stdin'
                sh 'docker push ajith724/docker'
            }
        }
        stage('Remove images'){
            steps{
                sh 'docker rmi -f $(docker images -q)'
            }
        }
        stage('Pull image from DockerHub'){
            steps{
                sh 'docker pull ajith724/docker'
            }
        }
        stage('Run a container'){
            steps{
                sh 'docker run -it -d --name ajju -p 8081:8080 ajith724/docker'
            }
        }
    }
    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            sh 'docker rm -f ajju'
        }
        always{
            echo 'Deployed'
        }
    }

}