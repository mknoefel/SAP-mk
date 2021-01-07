namespace: myWorkFlows
flow:
  name: addRandomUser
  inputs:
    - count: '5'
  workflow:
    - createIdentity:
        do:
          myWorkFlows.createIdentity: []
        publish:
          - login
          - firstName
          - lastName
          - email
          - phone
        navigate:
          - FAILURE: add_numbers
          - SUCCESS: addUser
    - addUser:
        do:
          myWorkFlows.addUser:
            - login: '${login}'
            - firstname: '${firstName}'
            - lastname: '${lastName}'
            - email: '${email}'
            - phone: '${phone}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '${count}'
            - value2: '-1'
        publish:
          - count: '${result}'
        navigate:
          - SUCCESS: compare_numbers
          - FAILURE: on_failure
    - compare_numbers:
        do:
          io.cloudslang.base.math.compare_numbers:
            - value1: '${count}'
            - value2: '0'
        navigate:
          - GREATER_THAN: createIdentity
          - EQUALS: FAILURE
          - LESS_THAN: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      createIdentity:
        x: 93.33334350585938
        'y': 127
      addUser:
        x: 275
        'y': 134
        navigate:
          9c971f1f-1878-bbbc-b678-7e6c211036c7:
            targetId: 26309262-c1d5-3493-293e-94f55098a7e5
            port: SUCCESS
      add_numbers:
        x: 96
        'y': 330
      compare_numbers:
        x: 280
        'y': 328
        navigate:
          256ccd98-cfa0-736c-f826-b3c71f1ee3b7:
            targetId: 8e4bd5da-d64f-fd48-6bcc-15971e3aab27
            port: LESS_THAN
          1c107342-a654-f3e5-b0ad-6f1f9affff06:
            targetId: 8e4bd5da-d64f-fd48-6bcc-15971e3aab27
            port: EQUALS
    results:
      SUCCESS:
        26309262-c1d5-3493-293e-94f55098a7e5:
          x: 445
          'y': 135
      FAILURE:
        8e4bd5da-d64f-fd48-6bcc-15971e3aab27:
          x: 443
          'y': 322
