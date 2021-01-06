namespace: sapWorkflows
flow:
  name: test
  workflow:
    - uuid_generator:
        do:
          io.cloudslang.base.utils.uuid_generator: []
        publish:
          - uuid: '${new_uuid}'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      uuid_generator:
        x: 72
        'y': 115
        navigate:
          afca49a3-0c1d-7bb5-8cba-953a62a8af36:
            targetId: 08689791-c562-099c-c9b7-98f19780f2bc
            port: SUCCESS
    results:
      SUCCESS:
        08689791-c562-099c-c9b7-98f19780f2bc:
          x: 241
          'y': 112
