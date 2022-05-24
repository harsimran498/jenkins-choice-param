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
	        script: 
		'return["SIT01","SIT02"]'
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
