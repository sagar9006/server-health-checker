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
            success {
                  archiveArtifacts artifacts: 'health_report.txt', fingerprint: true
                  echo 'Pipeline Completed Successfully!'

            }
            failure {
                   echo 'Pipeline Failed!'

            }

        }

}
