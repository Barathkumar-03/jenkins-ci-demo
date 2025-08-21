node {
  timestamps {
    try {
      stage('Run script') {
        sh './hello.sh'
        archiveArtifacts artifacts: 'hello.log', allowEmptyArchive: true
      }
      currentBuild.result = 'SUCCESS'
    } catch (e) {
      currentBuild.result = 'FAILURE'
      throw e
    } finally {
      // Send email either way (set your real email)
      def subj = "${currentBuild.result}: ${env.JOB_NAME} #${env.BUILD_NUMBER}"
      def body = """Build: ${env.BUILD_URL}
Commit: ${env.GIT_COMMIT}
Node  : ${env.NODE_NAME}
"""
      emailext(subject: subj, to: 'barathkumar1207@gmail.com', body: body, attachLog: true)
    }
  }
}
