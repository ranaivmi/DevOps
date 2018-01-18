#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage : Create an instance of test server"){ 
       steps{
         sh '''
	   ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i ansible/hosts ansible/Stage1_Config_Hardware/tasks/main.yml
           '''
         }
     }
	stage("Second Stage : Copy the code to the remote server"){ 
       steps{
         sh '''
	   ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i ansible/hosts ansible/Stage2_Copy_Code_to_Test_Server/tasks/main.yml
           '''
         }
     }
     	stage("Third Stage : Installation of the dependencies on the test server"){ 
       steps{
         sh '''
	   sudo apt install -y python
	   ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i ansible/hosts ansible/Stage3_Install_Dependencies/tasks/main.yml
           '''
         }
     }

 }
}
