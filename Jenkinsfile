pipeline {
  agent {
    node {
      label 'docker'
      withCredentials([usernameColonPassword(credentialsId: '498d4836-2247-4552-9e29-ba033c065528', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
      sh 'docker login --username $USERNAME --password $PASSWORD'
      }
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
}