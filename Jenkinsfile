
pipeline {
    agent any

    stages {
        stage('Hello World') {
            steps {
                echo 'Hello World'
            }
        }

        stage('Run Script') {
            steps {
                sh '''
                    chmod +x hello.sh
                    ./hello.sh
                    exit 1
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished (success, failure, or aborted).'
        }

        success {
            echo 'Pipeline executed successfully!'
        }

        failure {
            echo 'Pipeline failed!'

            mail(
                to: 'essammostafa2222@gmail.com',
                subject: "PIPELINE FAILURE: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
The Jenkins Pipeline has failed!

Job Name: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Build URL: ${env.BUILD_URL}

Please check the Console Output for details.
"""
            )
        }

        aborted {
            echo 'Pipeline was aborted!'
        }
    }
}
