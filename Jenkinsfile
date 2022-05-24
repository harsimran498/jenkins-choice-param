properties([
  parameters([
[   $class: 'ChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    description: 'choose any env',
    name: 'Env',
    script: [
      $class: 'GroovyScript',
      script: [
        classpath: [],
        sandbox: true,

		//'return["SIT01","SIT02"]'

		    script: '''
                def cmd = "sh readprop.sh envlist.txt"
                def cmd_out = cmd.execute() | "sort-V".execute()
                def envs = cmd_out.text.tokenize()
                return envs
                '''
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
       sh 'ls -ltr'
       sh 'sh readprop.sh envlist.txt'
    }
  }
 }
}
