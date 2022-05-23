properties([
  parameters([[
    $class: 'ChoiceParameter',
    choiceType: 'PT_CHECKBOX',
    name: 'environment',
    description: 'choose any env',
    script: [
      $class: 'GroovyScript',
      fallbackScript: [classpath: [], sandbox: false, script: 'return ["none"]'],
      script: [
        classpath: [],
        sandbox: false,
        script: 'return[\'SIT01\',\'SIT02\']'
      // '''
      //    def cmd = "sh readprop.sh envlist.txt"
      //    def cmd_out = cmd.execute()
      //    def cmd_out = "SIT1,SIT2"
      //  return cmd_out
      //  '''.stripIndent()
      ]
    ]
  ]])
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
