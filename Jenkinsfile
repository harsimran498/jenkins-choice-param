def envList

node  {
	ENVIRONMENT = "Environment\n" + sh (script: 'cat envlist.txt', returnStdout: true).trim()
}



 {
    agent any
         parameters {
            choice(name: 'ENVIRONMENT', choices: "${ENVIRONMENT}")
        }
       }


