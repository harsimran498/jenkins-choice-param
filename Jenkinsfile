properties([
  parameters([
[   $class: 'ChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    description: 'choose any env',
    name: 'Env',
    script: [
        $class: 'ScriptlerScript',
        ScriptlerScriptId:'envs.groovy'

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
