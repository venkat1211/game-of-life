pipeline {
    agent {label 'HRMS&&QA'}
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