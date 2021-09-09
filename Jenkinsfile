
pipeline {
  agent any

  environment {
    COMMIT_ID = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
  }

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t vuejs:latest -f ./$(pwd)/Dockerfile .'
      }
    }

    stage('Archive') {
      steps {
	sh 'docker tag vuejs:latest amso98/vuejs:$COMMID_ID'
        sh 'docker push amso98/vuejs:$COMMID_ID'
      }
    }

    stage('Cleanup') {
      steps {
        sh 'docker rmi amso98/vuejs:$COMMID_ID'
      }
    }
  }
}   
