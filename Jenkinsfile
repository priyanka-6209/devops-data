pipeline {
    agent any
    stages {
        stage('Build Docker Image'){
	        steps {
	            script{
	                app=docker.build("priyanka6209/springbatch-example")
	                app.inside{
	                  sh 'echo $(curl localhost:8081)'
	                }
	            }
	         }
        }
        stage('Push Docker Image'){
          steps{
	          script{
	              docker.withRegistry('https://registry.hub.docker.com','dockerhub-id'){
	                  app.push("${env.BUILD_NUMBER}")
	                  app.push("latest")
	              }
            }
          }
        }
    }
}
