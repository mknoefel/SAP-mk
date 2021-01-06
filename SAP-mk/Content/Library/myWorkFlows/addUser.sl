namespace: myWorkFlows
flow:
  name: addUser
  inputs:
    - login
    - firstname
    - lastname
    - email
    - phone
  workflow:
    - addUserToAOS:
        do:
          myWorkFlows.addUserToAOS:
            - username: '${login}'
            - email: '${email}'
            - telephone: '${phone}'
            - firstName: '${firstname}'
            - lastName: '${lastname}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      addUserToAOS:
        x: 118.33334350585938
        'y': 114
        navigate:
          d72f369f-a244-bb80-8324-bd04d97b42a8:
            targetId: a1832a5c-9885-72e0-7caf-6d095c148e39
            port: SUCCESS
          6c585e96-78be-45b8-9ee0-4b94276199fe:
            targetId: a1832a5c-9885-72e0-7caf-6d095c148e39
            port: WARNING
    results:
      SUCCESS:
        a1832a5c-9885-72e0-7caf-6d095c148e39:
          x: 317
          'y': 111
