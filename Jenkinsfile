pipeline {
    agent {label 'HRMS&&QA'}'
    triggers {pollSCM('* * * * 1-5')}
    //triggers {cron('30 * * * 1-5')}
    stages {
        stage('git') {
            steps {
                git url:'https://github.com/venkat1211/game-of-life.git', branch:'DeclarativePipeline'

            }
        }
        stage('compile') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}