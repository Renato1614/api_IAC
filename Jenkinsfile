pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat "dotnet restore ${workspace}\\api.sln"
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