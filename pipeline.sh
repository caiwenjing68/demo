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
                sh 'ansible-playbook ansible_playbook.yml.yml'
            }
        }
    }
}
