pipeline {
    agent any
    environment {
        PASS = credentials('registry_pass')
    }
    stages {
        stage('Buildcode') {
            steps {
                cleanWs()
                sh '''
                    ./jenkins/build/build.sh npm install && npm test
                ''' 
                    
            }
        }
        stage('BuildImage') {
            steps {
                sh '''
                    ./jenkins/buildimage/buildimage.sh
                '''
            }
        }
        stage('PushtoDockerhub') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
                ''' 
            }
        }
        stage('Deplyment on target server') {
            steps {
                sh '''
                    ./jenkins/deploy/deploy.sh 
                '''
            }
        }
    }
}
