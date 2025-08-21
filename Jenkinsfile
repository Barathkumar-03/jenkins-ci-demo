post {
  success {
    emailext(
      subject: "SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
      to: 'barathkumar1207@gmail.com',
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
      to: 'barathkumar1207@gmail.com',
      body: "Build failed. See ${env.BUILD_URL}",
      attachLog: true
    )
  }
}
