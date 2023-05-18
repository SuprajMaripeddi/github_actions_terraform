pipeline {
  agent any
  environment {
    AWS_ACCESS_KEY_ID = credentials('AWS-Creds')
    AWS_SECRET_ACCESS_KEY = credentials('AWS-Creds')
  }
  stages {
    stage('Checkout') {
      steps {
        // Checkout your source code repository
        // For example, with Git:
       git branch: 'main',
        credentialsId: 'supraj-github-creds',
        url: 'https://github.com/SuprajMaripeddi/github_actions_terraform.git'
      }
    }

    stage('Install and configure Terraform') {
      steps {
        // Configure AWS credentials
          // Use the credentials in Terraform commands
          sh ''' 
          cd s3
          terraform init
          terraform plan
          '''
        //   sh 'terraform apply
      }
    }
  }
}
