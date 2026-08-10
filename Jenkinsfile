pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'chmod +x day5_health_checker.sh'
                sh 'ls -l day5_health_checker.sh'
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
