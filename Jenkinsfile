#!/usr/bin/env groovy

pipeline { 
agent any  
stages {
         stage("First Stage"){ 
       steps{
         sh '''
           echo "This is the first stage"
           '''
	 checkout scm
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
