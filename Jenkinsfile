def envList

node  {
	mylist =  sh (script: 'cat envlist.txt', returnStdout: true).trim()
}


pipeline{
 
    agent any
         parameters {
            choice(name: 'DEPLOYMENT_ENV', choices: "${mylist}")
        }

    stages{
         stage("teststage")
            {
             steps{
                    sh "echo SUCCESS"
            }
          }
          }
}


