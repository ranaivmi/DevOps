#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage : Copy the code to the remote server"){ 
       steps{
         sh '''
           echo "This is the first stage"
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
