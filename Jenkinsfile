pipeline {
    agent any

    parameters {
        choice(
            name: 'TF_WORKSPACE',
            choices: ['dev', 'stg', 'prod'],
            description: 'اختار الـ workspace'
        )
        choice(
            name: 'ACTION',
            choices: ['plan', 'apply', 'destroy'],
            description: 'اختار العملية'
        )
    }

    environment {
        // قيم وهمية لأن floci محاكي. شيلها لو متحطة في Provider.tf
        AWS_ACCESS_KEY_ID     = 'test'
        AWS_SECRET_ACCESS_KEY = 'test'
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -input=false'
            }
        }

        stage('Workspace Select') {
            steps {
                sh """
                    terraform workspace select ${params.TF_WORKSPACE} || terraform workspace new ${params.TF_WORKSPACE}
                    terraform workspace show
                """
            }
        }

        stage('Plan') {
            steps {
                script {
                    def destroyFlag = (params.ACTION == 'destroy') ? '-destroy' : ''
                    sh "terraform plan ${destroyFlag} -input=false -var-file=${params.TF_WORKSPACE}.tfvars -out=tfplan"
                }
            }
        }

        stage('Approve') {
            when {
                expression { params.ACTION != 'plan' }
            }
            steps {
                timeout(time: 10, unit: 'MINUTES') {
                    input message: "تأكيد ${params.ACTION} على ${params.TF_WORKSPACE}؟",
                          ok: 'Proceed'
                }
            }
        }

        stage('Apply') {
            when {
                expression { params.ACTION != 'plan' }
            }
            steps {
                sh 'terraform apply -input=false tfplan'
            }
        }
    }

    post {
        success {
            echo "Pipeline نجح (${params.ACTION} على ${params.TF_WORKSPACE})"
        }
        failure {
            mail to: 'your-email@example.com',
                 subject: "فشل: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                 body: "راجع اللوج: ${env.BUILD_URL}"
        }
    }
}
