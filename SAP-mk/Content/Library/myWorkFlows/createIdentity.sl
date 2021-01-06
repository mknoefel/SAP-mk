namespace: myWorkFlows
flow:
  name: createIdentity
  workflow:
    - createIdentities:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: "${get_sp('fakeUsers.url')+'?noinfo&nat='+get_sp('fakeUsers.nat')+'&results='+get_sp('fakeUsers.results')}"
            - query_params: 'inc=name,phone,login,email'
        publish:
          - returnJson: '${return_result}'
        navigate:
          - SUCCESS: validate_json
          - FAILURE: on_failure
    - validate_json:
        do:
          io.cloudslang.base.json.validate_json:
            - json_input: '${returnJson}'
        publish:
          - return_result
          - firstName: "${cs_regex(cs_json_query(json_input, \"$.results[0].name.first\"),\"[^\\[\\]\\\"]+\")}"
          - lastName: "${cs_regex(cs_json_query(json_input, \"$.results[0].name.last\"),\"[^\\[\\]\\\"]+\")}"
          - phone: "${cs_regex(cs_json_query(json_input, \"$.results[0].phone\"),\"[^\\[\\]\\\"]+\")}"
          - email: "${cs_regex(cs_json_query(json_input, \"$.results[0].email\"),\"[^\\[\\]\\\"]+\")}"
          - login: "${cs_regex(cs_json_query(json_input, \"$.results[0].login.username\"),\"[^\\[\\]\\\"]+\")}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - login: '${login}'
    - firstName: '${firstName}'
    - lastName: '${lastName}'
    - email: '${email}'
    - phone: '${phone}'
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      createIdentities:
        x: 93.33334350585938
        'y': 76
      validate_json:
        x: 251
        'y': 78
        navigate:
          b50b8319-a7f4-1ccb-c25f-a69a6c493241:
            targetId: 6b0cb95d-2071-c451-c951-9a1db78b6d0c
            port: SUCCESS
    results:
      SUCCESS:
        6b0cb95d-2071-c451-c951-9a1db78b6d0c:
          x: 425
          'y': 81
