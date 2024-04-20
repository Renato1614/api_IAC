pipeline {
    agent any

    stages {
        stage('Clean'){
            steps{
                dotnet clean 
            }
        }
        stage('Restore') {
            steps {
                dotnet restore
            }
        }
        stage('Build') {
            steps {
                dotnet build
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