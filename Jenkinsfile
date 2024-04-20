pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat "msbuild.exe restore ${workspace}\\api.sln"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}