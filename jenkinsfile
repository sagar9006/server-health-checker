pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building Server Health Checker...'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing Server Health Checker...'
            }
        }

        stage('Run Health Checker') {
            steps {
                sh 'bash day5_health_checker.sh'
            }
        }

    }
}
