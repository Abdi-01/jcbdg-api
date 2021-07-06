pipeline{
    agent any
    
    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t aldocker01/jcbdg-api .'
            }
        }
        stage('Running') {
            steps {
                sh 'docker run -d -p 7000:2000 --name jcbdg-api-jenkins aldocker01/jcbdg-api'
            }
        }
    }
}