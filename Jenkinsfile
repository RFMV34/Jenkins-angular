pipeline {
  agent { dockerfile true }
  stages {
    stage('Install') {
      steps { sh 'npm install' }
    }

    stage('Test') {
      parallel {
        stage('Static code analysis') {
            steps { sh 'npm run-script lint' }
        }
        stage('Unit tests') {
            steps { sh 'npm run-script test' }
        }
        stage('E2E tests') {
            steps { sh 'npm run-script e2e' }
        }
      }
    }

    stage('Build') {
      steps {
        sh 'npm run-script build'
        archiveArtifacts artifacts: 'dist/**/*.*', fingerprint: true
      }
    }
  }
}
