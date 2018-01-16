#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage : Copy the code to the remote server"){ 
       steps{
         sh '''
           echo "This is the first stage"
	   pwd
	   whoami
	   ansible-playbook -i ansible/hosts ansible/Stage1_Copy_Code_to_Test_Server/tasks/main.yml
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
