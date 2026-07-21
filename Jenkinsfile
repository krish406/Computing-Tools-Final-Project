pipeline {
  agent any
  stages {
    stage('Checkout') { steps { checkout scm } }
    stage('Build Image') {
      steps { sh 'docker build -t flask-project:v1 .' }
    }
    stage('Terraform Apply') {
      steps {
        sh 'terraform init'
        sh 'terraform apply -auto-approve'
      }
    }
  }
}