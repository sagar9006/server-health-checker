pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'chmod +x day5_health_checker.sh'
   
            }
        }

        stage('Test') {
            steps {
               sh 'bash day5_health_checker.sh'
            }
        }

        stage('Run Health Checker') {
            steps {
                sh 'bash day5_health_checker.sh'

            }
        }

    }
        post {
            Success {
                  echo 'Pipeline Completed Successfully!'

            }
            Failure {
                   echo 'Pipeline Failed!'

            }

        }

}
