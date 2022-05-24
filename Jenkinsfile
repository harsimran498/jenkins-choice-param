//ENVIRONMENT = 'sit\nstage\npro'
//def String ENVIRONMENT = sh(script: 'sh readprop.sh envlist.txt', returnStdout: true)

//pipeline {
//    agent none
//    environment {
//        def ENVIRONMENT = sh(script: """sh readprop.sh envlist.txt'""",returnStdout:true).trim()
//        }
//    }


pipeline {
    agent none
        stages {
            stage("Run something") {
              environment {
                def ENVIRONMENT = sh(script: """sh readprop.sh envlist.txt'""",returnStdout:true).trim()
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