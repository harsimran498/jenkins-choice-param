ENVIRONMENT = 'sit\nstage\npro'

properties([
  parameters([
[   $class: 'CascadeChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    description: 'choose any env',
    //name: 'Env',
    //referencedParameters: 'ENVIRONMENT',
    script: [
        $class: 'GroovyScript',

        script: [
                 classpath: [],
                 sandbox: true,
                 script: """
                    return ENVIRONMENT
                    """

              //   script: """
               //    if (ENVIRONMENT == 'sit') {
               //         return['SIT01','SIT02']
              //          }
               //         else {
                //            return['ccc', 'ddd']
                //         }
                //   """.stripIndent()

             ]
    ]
 ]

  ])
])


pipeline {
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: "${ENVIRONMENT}")
    }
    stages {
        stage("Run Tests") {
            steps {
                sh "echo SUCCESS on ${params.ENVIRONMENT}"
            }
        }
    }
}