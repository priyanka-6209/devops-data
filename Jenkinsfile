pipeline {
   agent any
     tools{
        maven 'maven'
     }
    stages{
    	stage('Build'){
    		steps {
                echo 'Running build automation'
                //sh 'mvn -B -DskipTests clean package'
                sh 'mvn clean package'
                archiveArtifacts artifacts: 'target/SpringBatchExample-1.0-SNAPSHOT.jar'
    		}
    	}
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
