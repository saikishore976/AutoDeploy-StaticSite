pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YOUR_USERNAME/AutoDeploy-StaticSite.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t autodeploy-site .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 80:80 --name website autodeploy-site'
            }
        }
    }
}
