#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage : Create an instance of test server"){ 
       steps{
         sh 'ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i ansible/hosts ansible/Stage1_Config_Hardware/tasks/main.yml'
         }
     }
	stage("Second Stage : Copy the code to the test server"){ 
       steps{
         sh 'ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i ansible/hosts ansible/Stage2_Copy_Code_to_Test_Server/tasks/main.yml'
         }
     }
     	stage("Third Stage : Installation of the dependencies"){ 
       steps{
         sh 'echo Hello'
         }
     }

 }
}
