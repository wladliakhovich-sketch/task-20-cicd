pipeline {
    agent any

    environment {
        IMAGE = "waldis2235/task15-nginx"
        TAG = "${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:wladliakhovich-sketch/task-20-cicd.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t $IMAGE:$TAG .'
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                }
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push $IMAGE:$TAG'
            }
        }

        stage('Deploy via Ansible') {
            steps {
                sh '''
                ansible-playbook -i /var/lib/jenkins/ansible/inventory.ini \
                /var/lib/jenkins/ansible/deploy.yml \
                -e image_tag=v1
                '''
            }
        }
    }
}
