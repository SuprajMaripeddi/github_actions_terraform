pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        // Checkout your source code repository
        // For example, with Git:
       git branch: 'master',
        credentialsId: 'supraj-github-creds',
        url: 'https://github.com/SuprajMaripeddi/github_actions_terraform.git'
      }
    }

    stage('Install and configure Terraform') {
      steps {
        // Configure AWS credentials
        withCredentials([
          awsAccessKey(credentialsId: 'AWS-Creds', variable: 'AWS_ACCESS_KEY_ID'),
          awsSecretKey(credentialsId: 'AWS-Creds', variable: 'AWS_SECRET_ACCESS_KEY')
        ]) {
          // Use the credentials in Terraform commands
          sh 'terraform init'
          sh 'terraform plan'
        //   sh 'terraform apply'
        }
      }
    }
  }
}
