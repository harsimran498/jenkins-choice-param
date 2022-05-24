ENVIRONMENT = 'sit\nstage\npro'

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
                    if (ENVIRONMENT == 'sit') {
                        return['SIT01','SIT02']
                        }
                        else {
                            return['ccc', 'ddd']
                         }
                    """.stripIndent()

             ]
    ]
 ]

  ])
])


pipeline {
    agent any

    options {
        disableConcurrentBuilds()
        timestamps()
        timeout(time: 30, unit: 'MINUTES')
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'ENVIRONMENT', choices: "${environments}")
    }
    stages {
        stage("Run Tests") {
            steps {
                sh "echo SUCCESS on ${params.ENVIRONMENT}"
            }
        }
    }
}