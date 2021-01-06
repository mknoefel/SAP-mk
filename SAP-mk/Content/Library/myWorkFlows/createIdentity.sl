namespace: myWorkFlows
flow:
  name: createIdentity
  workflow:
    - createIdentities:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: "${get_sp('fakeUsers.url')+'?nat='+get_sp('fakeUsers.nat')+'&results='+get_sp('fakeUsers.results')}"
        publish:
          - returnJson: '${return_result}'
          - firstName: "${cs_json_query(return_result,'$.')}"
          - return_result: eins
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      createIdentities:
        x: 93.33334350585938
        'y': 76
        navigate:
          363a6b2b-a967-bcf4-2fb3-a4fd4b07cad8:
            targetId: 6b0cb95d-2071-c451-c951-9a1db78b6d0c
            port: SUCCESS
    results:
      SUCCESS:
        6b0cb95d-2071-c451-c951-9a1db78b6d0c:
          x: 294
          'y': 77
