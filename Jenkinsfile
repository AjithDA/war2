pipeline {
    agent any

    tools{
        maven 'maven'
    }

    stages{
        stage('Check and remove container'){
            steps{
                script{
                    def containerExists = sh(script: "docker ps -q -f name=ajju1", returnStdout: true).trim()
                    if (containerExists) {
                    sh "docker stop ajju1"
                    sh "docker rm ajju1"
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
                sh 'sudo docker build -t app /var/lib/jenkins/workspace/job1/'
            }
        }
        stage('Assign tag'){
            steps{
                sh 'docker tag app ajith724/docker1'
            }
        }
        stage('Push to dockerhub'){
            steps{
                sh 'echo "ajith123456" | docker login -u "ajith724" --password-stdin'
                sh 'docker push ajith724/docker1'
            }
        }
        stage('Remove images'){
            steps{
                sh 'docker rmi -f $(docker images -q)'
            }
        }
        stage('Pull image from DockerHub'){
            steps{
                sh 'docker pull ajith724/docker1'
            }
        }
        stage('Run a container'){
            steps{
                sh 'docker run -it -d --name ajju1 -p 8081:8080 ajith724/docker1'
            }
        }
    }
    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            sh 'docker rm -f ajju1'
        }
        always{
            echo 'Deployed'
        }
    }

}