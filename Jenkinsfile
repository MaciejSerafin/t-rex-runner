pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo "Cloning repository..."
                git 'https://github.com/MaciejSerafin/t-rex-runner.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t t-rex-game .'
            }
        }

        stage('Run Game Container') {
            steps {
                echo "Running game container..."
                sh 'docker run -d -p 8080:8080 --name t-rex-game t-rex-game'
            }
        }

        stage('Publish Info') {
            steps {
                echo "Game is available at: http://<YOUR_JENKINS_IP>:8080"
            }
        }
    }

    post {
        always {
            echo "Pipeline completed."
        }
    }
}
