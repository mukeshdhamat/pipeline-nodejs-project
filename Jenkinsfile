pipeline {
    agent any
    environment {
        PASS = credentials('registry_pass')
    }
    stages {
        stage('Buildcode') {
            steps {
                sh '''
                    ./jenkins/build/build.sh
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
