def envList

node  {
	ENVIRONMENT = "Environment\n" + sh (script: 'cat envlist.txt', returnStdout: true).trim()
}


pipeline{
 
    agent any
         parameters {
            choice(name: 'ENVIRONMENT', choices: "${ENVIRONMENT}")
        }

        stages{
            stage("RunTests")
            {
                steps{
                    sh"echo SUCCESS on ${ENVIRONMENT}"
            }
          }
          }
}


