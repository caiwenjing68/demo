pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/caiwenjing68/demo.git'
            }
        }
        
        stage('Execute Ansible') {
            steps {
                ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'dev.inv', playbook: 'ansible_playbook.yml'
            }
        }
    }
}