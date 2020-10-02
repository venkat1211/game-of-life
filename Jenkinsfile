pipeline {
    agent {label 'HRMS&&QA'}'
    triggers {pollSCM('* * * * 1-5')}
    //triggers {cron('30 * * * 1-5')}
    parameters { 
        string(
            name: 'testreports', 
            defaultValue: 'gameoflife-web/target/surefire-reports/*.xml', 
            description: 'this is test reports path'
        ) 

        string(
            name: 'artifactspath', 
            defaultValue: 'gameoflife-web/target/*.war', 
            description: 'this is artifact path'

        )
        choice(
            name: 'branch', 
            choices: ['ScriptedPipeline', 'DeclarativePipeline', 'master'] 
            description: 'this is brach seclation

        )
    }


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
        
        stage('postbuild) {
            steps {
                junit testResults: "${params.testreports}"
            }
            steps {
                archive includes: "${params.artifactspath}"
            }
        }

        }
    }
}