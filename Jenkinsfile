pipeline {
  agent any
  environment {
    AWS_ACCESS_KEY_ID = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-access-key')
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
          sh 'terraform init'
          sh 'terraform plan'
        //   sh 'terraform apply
      }
    }
  }
}
