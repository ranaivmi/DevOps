#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage : Copy the code to the remote server"){ 
       steps{
         sh '''
           echo "This is the first stage"
	   ansible-playbook -i ansible-test/hosts ansible-test/Stage1_Copy_Code_to_Test_Server/tasks/main.yml
           '''
         }
     }
	stage("Second Stage"){ 
       steps{
         sh '''
           echo "This is the second stage"
           '''
         }
     }
 }
}
