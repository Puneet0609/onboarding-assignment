pipeline {
    //agent { docker { image 'ruby:3.0.3-alpine' } }
    agent { any { image 'ruby:3.0.3-alpine'  } }
    stages {
        stage('clone') {
            steps {
                sh 'ls'
                git branch: 'cucu_flipkart_assignment', credentialsId: '290fdee2-cadb-4693-9dd5-ad195ee3d2f4', url: 'https://github.com/Puneet0609/onboarding-assignment.git'
            }
        }
        stage('build') {
            steps {
                sh 'source ~/.zshrc'
                sh '~/.rbenv/shims/ruby'
                sh 'ruby -v'
                sh 'export PATH=$PATH:/Users/puneetmeghrajani/.gem/ruby/3.0.0/bin/bundle'
                sh '/Users/puneetmeghrajani/.gem/ruby/3.0.0/bin/bundle install'
                sh '/Users/puneetmeghrajani/.gem/ruby/3.0.0/bin/cucumber --tag @${tags} --format junit --out reports'
            }
            }
        }
        post {
          success {
                    archiveArtifacts artifacts: 'reports/*.xml', followSymlinks: false
          }
        }
    }