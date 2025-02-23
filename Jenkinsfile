pipeline {
  agent any

  stages {
    stage ('git version') {
      steps {
        sh 'git version'
      }
    }

    stage ('Node version') {
      steps {
        sh 'node version'
      }
    }
  }
}
