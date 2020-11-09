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
        sh 'docker build -t $DockerName:$DockerTag .'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push $DockerName:$DockerTag'
      }
    }

    stage('Cleanup') {
      steps {
        sh 'docker rmi $DockerName:$DockerTag'
      }
    }

  }
  environment {
    DockerName = "piwi3910/jenkins-automation"
    DockerTag = "latest"
    DOCKERHUB_CRED = credentials("498d4836-2247-4552-9e29-ba033c065528")
    Dockerhub_Username = "${env.DOCKERHUB_CRED_USR}"
    Dockerhub_Password = "${env.DOCKERHUB_CRED_PSW}"
  }
}
