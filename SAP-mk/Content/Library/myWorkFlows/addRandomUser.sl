namespace: myWorkFlows
flow:
  name: addRandomUser
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
          - FAILURE: on_failure
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
    results:
      SUCCESS:
        26309262-c1d5-3493-293e-94f55098a7e5:
          x: 445
          'y': 135
