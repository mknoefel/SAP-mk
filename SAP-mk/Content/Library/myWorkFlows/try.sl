namespace: myWorkFlows
flow:
  name: try
  inputs:
    - count: '5'
  workflow:
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
          - GREATER_THAN: add_numbers
          - EQUALS: SUCCESS
          - LESS_THAN: CUSTOM
  results:
    - SUCCESS
    - FAILURE
    - CUSTOM
extensions:
  graph:
    steps:
      add_numbers:
        x: 126.33334350585938
        'y': 117.33332824707031
      compare_numbers:
        x: 321
        'y': 119
        navigate:
          170715dd-b55d-fb77-5a58-e257d8f4e4fc:
            targetId: d628494d-de92-fa57-55f3-1f4f433439e1
            port: EQUALS
          3dc8d543-0157-bb72-2338-3641efee34ea:
            targetId: 345ea5f0-69d4-2169-fec2-cf701f583aa8
            port: LESS_THAN
    results:
      SUCCESS:
        d628494d-de92-fa57-55f3-1f4f433439e1:
          x: 316
          'y': 269
      CUSTOM:
        345ea5f0-69d4-2169-fec2-cf701f583aa8:
          x: 517
          'y': 119
