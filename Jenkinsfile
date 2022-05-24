//ENVIRONMENT = 'sit\nstage\npro'
def String ENVIRONMENT

pipeline {
    agent any
     stages {
        stage('my-first-stage') {
            steps {
                script {
                ENVIRONMENT = sh(script: 'sh readprop.sh envlist.txt', returnStdout: true)
                }
               echo "${ENVIRONMENT}"
        }
     }
 }
}

properties([
  parameters([
[   $class: 'CascadeChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    description: 'choose any env',
    name: 'ENVIRONMENT',
    referencedParameters: 'ENVIRONMENT',
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