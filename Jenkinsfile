node('master') {
    properties([pipelineTriggers([cron('30 * * * 1-5')])])
    //properties(pollSCM('* * * * 1-5'))
	//SCM project clone
    stage('git') {
        git 'https://github.com/venkat1211/game-of-life.git'
    }

    stage('build') {
        sh 'mvn clean package'
    }

    stage('testresults') {
        junit 'gameoflife-web/target/surefire-reports/*.xml'

    }

    stage('archiveArtifacts') {
        archiveArtifacts artifacts: 'gameoflife-web/target/*war', followSymlinks: false
    }
}