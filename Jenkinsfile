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
               sh 'bash day5_health_checker.sh > health_report.txt'
            }
        }

       stage('Run Health Checker') {
    steps {
        sh '''
            bash day5_health_checker.sh > health_report.txt
            echo "Script exit code: $?"
            ls -l health_report.txt
        '''
    }
       }

    }
        post {
            success {
                  archiveArtifacts artifacts: 'health_checker.txt', fingerprint: true

                  echo 'Pipeline Completed Successfully!'

            }
            failure {
                   echo 'Pipeline Failed!'

            }

        }

}
