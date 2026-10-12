
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
    mimeType: 'text/html',
    body: """
    <html>
    <body style="font-family: Arial, sans-serif; background-color: #f4f6f8; padding: 20px;">

        <div style="max-width: 600px; margin: auto; background-color: #ffffff;
                    border: 1px solid #dddddd; border-radius: 10px; overflow: hidden;">

            <div style="background-color: #dc3545; color: white; padding: 20px;">
                <h2 style="margin: 0;">&#9888; Jenkins Pipeline Failed</h2>
            </div>

            <div style="padding: 20px;">
                <p>Hello,</p>

                <p>
                    Your Jenkins pipeline has <strong style="color: #dc3545;">failed</strong>.
                    Please review the build details below.
                </p>

                <table style="width: 100%; border-collapse: collapse;">
                    <tr>
                        <td style="padding: 10px; border: 1px solid #dddddd;">
                            <strong>Job Name</strong>
                        </td>
                        <td style="padding: 10px; border: 1px solid #dddddd;">
                            ${env.JOB_NAME}
                        </td>
                    </tr>
                    <tr style="background-color: #f8f9fa;">
                        <td style="padding: 10px; border: 1px solid #dddddd;">
                            <strong>Build Number</strong>
                        </td>
                        <td style="padding: 10px; border: 1px solid #dddddd;">
                            #${env.BUILD_NUMBER}
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px; border: 1px solid #dddddd;">
                            <strong>Build Status</strong>
                        </td>
                        <td style="padding: 10px; border: 1px solid #dddddd; color: #dc3545;">
                            FAILURE
                        </td>
                    </tr>
                </table>

                <p style="margin-top: 25px;">
                    <a href="${env.BUILD_URL}"
                       style="background-color: #0d6efd; color: white; padding: 12px 18px;
                              text-decoration: none; border-radius: 5px; display: inline-block;">
                        View Build Details
                    </a>
                </p>

                <p>Please check the Jenkins Console Output to identify the error.</p>
            </div>

            <div style="background-color: #f4f6f8; padding: 15px; text-align: center;
                        color: #666666; font-size: 12px;">
                Automated notification from Jenkins CI/CD
            </div>

        </div>
    </body>
    </html>
    """
)

        }

        aborted {
            echo 'Pipeline was aborted!'
        }
    }
}
