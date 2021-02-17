namespace: sapWorkflows
flow:
  name: status_S4HANA
  inputs:
    - instance: '00'
    - sapcontrol
    - host
    - username
    - password
  workflow:
    - getStatus:
        do:
          io.cloudslang.base.ssh.ssh_command:
            - host: '${host}'
            - command: "${sapcontrol+' -nr '+instance+' -function GetProcessList'}"
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
        publish:
          - Status00: '${return_result}'
        navigate:
          - SUCCESS: Yellow
          - FAILURE: on_failure
    - Yellow:
        do:
          io.cloudslang.base.strings.filter_lines:
            - text: '${Status00}'
            - filter: YELLOW
        publish:
          - filter_result
        navigate:
          - SUCCESS: exitWithYellow
    - Gray:
        do:
          io.cloudslang.base.strings.filter_lines:
            - text: '${Status00}'
            - filter: GRAY
        publish:
          - filter_result
        navigate:
          - SUCCESS: exitWithGray
    - exitWithYellow:
        do:
          io.cloudslang.base.strings.string_equals:
            - first_string: '${filter_result}'
            - ignore_case: 'true'
        navigate:
          - SUCCESS: Gray
          - FAILURE: on_failure
    - exitWithGray:
        do:
          io.cloudslang.base.strings.string_equals:
            - first_string: '${filter_result}'
            - ignore_case: 'true'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      exitWithGray:
        x: 687
        'y': 186
        navigate:
          33d1452d-b6c4-2f6a-c2b3-853efb070028:
            targetId: de241890-59ab-6639-61d8-c4556753a9bf
            port: SUCCESS
      Yellow:
        x: 209
        'y': 173
      Gray:
        x: 513
        'y': 179
      exitWithYellow:
        x: 374
        'y': 184
      getStatus:
        x: 44
        'y': 166
    results:
      SUCCESS:
        de241890-59ab-6639-61d8-c4556753a9bf:
          x: 859
          'y': 179
