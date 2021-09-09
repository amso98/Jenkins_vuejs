
pipeline {
  agent any

  environment {
    COMMIT_ID = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
  }

  stages {
    stage('Build') {
      steps {
        sh 'cd vueJS; docker build -t vuejs:latest .'
      }
    }
    stage('Archive') {
      steps {
        sh 'docker tag vuejs:latest amso98/vuejs:latest'
      }
    }
    stage('Cleanup') {
      steps {
        sh 'docker rmi amso98/vuejs:latest'
      }
    }
  }
}
