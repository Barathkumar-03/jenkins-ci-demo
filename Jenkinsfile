pipeline {
  agent any
  triggers { githubPush() }   // webhook trigger (fallback: see step 5)
  options { timestamps() }
  stages {
    stage('Run script') {
      steps {
        sh './hello.sh'
        archiveArtifacts artifacts: 'hello.log', allowEmptyArchive: true
      }
    }
  }
  post {
    success {
      emailext(
        subject: "SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
        to: 'you@example.com',
        body: """Build: ${env.BUILD_URL}
Commit: ${env.GIT_COMMIT}
Node  : ${env.NODE_NAME}
""",
        attachLog: true
      )
    }
    failure {
      emailext(
        subject: "FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
        to: 'you@example.com',
        body: "Build failed. See ${env.BUILD_URL}",
        attachLog: true
      )
    }
  }
}
