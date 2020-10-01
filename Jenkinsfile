node('HRMS&&QA') {
    stage('git') {
        git 'https://github.com/venkat1211/game-of-life.git'
    }

    stage('build') {
        sh 'mvn clean package'
    }

    stage('testresults') {
        junit 'gameoflife/target/surefire-reports/*.xml'

    }

    stage('archiveArtifacts') {
        archiveArtifacts artifacts: 'gameoflife/target/*war', followSymlinks: false
    }
}