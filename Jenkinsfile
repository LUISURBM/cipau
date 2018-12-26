pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v C:\Users\dmartin.ext\.m2:C:\Users\dmartin.ext\.m2'  
        }
    }
    stages {
        stage('Build') { 
            steps {
                bat 'mvn -B -DskipTests clean package' 
            }
        }
    }
}