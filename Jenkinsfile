pipeline {
    agent any
    envirinment {
        PASS = credentials('registry_pass')
    }
    stages {
        stage('Buildcode') {
            steps {
                sh '''
                    ./jenkins/build/build.sh npm install && npm test
                    
            }
        }
        stage('BuildImage') {
            steps {
                sh '''
                    ./jenkins/buildimage/buildimage.sh
            }
        }
        stage('PushtoDockerhub') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
      
            }
        }
        stages('Deplyment on target server') {
            steps {
                sh '''
                    ./jenkins/deploy/deploy.sh 
            }
        }
    }
}
