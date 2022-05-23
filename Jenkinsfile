properties([
  parameters([[
    $class: 'ChoiceParameter',
    choiceType: 'PT_SINGLE_SELECT',
    name: 'environment',
    description: 'choose any env',
    filterLength: 1,
    filterable: false,
    script: [
      $class: 'GroovyScript',
      fallbackScript: [classpath: [], sandbox: false, script: 'return ["none"]'],
      script: [
        classpath: [],
        sandbox: false,
        script: '''\
         
          def cmd = "while IFS= read -r line || [[ -n "$line" ]]; do"; +
                            "echo "$line"; +
                            "done < "envlist.txt"" 
                            
          def cmd_out = cmd.execute() | "sort -V".execute()
          def envs = cmd_out.text.tokenize().reverse()
          return envs
        '''.stripIndent()
      ]
    ]
  ]])
])
