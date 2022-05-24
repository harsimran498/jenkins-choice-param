properties([
  parameters([
[   $class: 'ChoiceParameter',
    choiceType: 'PT_MULTI_SELECT',
    description: 'choose any env',
    name: 'Env',
    script: [
      $class: 'GroovyScript',
      script: [
        classpath: [],
        sandbox: true,
        script:
           //'return["SIT01","SIT02"]'

           def list = sh(script: 'sh readprop.sh envlist.txt', returnStdout:true)
           return list

		//    script: '''
           //     def list = "load "./envlist.groovy""
             //   echo "${env.env_var1}"
               // echo "${env.env_var2}"
               // def envs = list.text.tokenize()
               // return envs
          //   '''
             ]
    ]
]
  ])
])


pipeline {
 agent any
 
 stages {
  stage("First") {
    steps {
        script {
       // sh 'ls -ltr'
      // sh 'sh readprop.sh envlist.txt'

       load "./envlist.groovy"
       echo "${env.env_var1}"
       echo "${env.env_var2}"
       }
    }
  }
 }
}
