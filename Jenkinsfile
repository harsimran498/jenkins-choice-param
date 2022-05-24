ENVIRONMENT = 'lab\nstage\npro'

properties([
  parameters([
[   $class: 'ChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    description: 'choose any env',
    name: 'Env',
    referencedParameters: 'ENVIRONMENT',
    script: [
        $class: 'GroovyScript',
            script: [
                 classpath: [],
                 sandbox: true,
                 script: """
                    return ENVIRONMENT
                    """.stripIndent()

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
            sh 'ls -ltr'
            sh 'sh readprop.sh envlist.txt'

       }
    }
  }
 }
}
