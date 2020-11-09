pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('Prepare') {
      steps {
        sh 'docker login --username $Dockerhub_Username --password $Dockerhub_Password'
      }
    }

    stage('Build') {
      steps {
        sh 'ls -la'
        sh 'docker build -t piwi3910/jenkins-automation .'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push piwi3910/jenkins-automation'
      }
    }

  }
  environment {
    Dockerhub_Username = 'piwi3910'
    Dockerhub_Password = 'Jbz49teq01!'
  }
}