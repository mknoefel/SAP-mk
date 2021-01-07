namespace: myWorkFlows
flow:
  name: try
  inputs:
    - count: '2'
  workflow:
    - loop:
        do:
          myWorkFlows.loop:
            - count: '${count}'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      loop:
        x: 112.33334350585938
        'y': 103
        navigate:
          8b1570cb-1c9f-1171-06b4-5129ef5dda36:
            targetId: d628494d-de92-fa57-55f3-1f4f433439e1
            port: SUCCESS
    results:
      SUCCESS:
        d628494d-de92-fa57-55f3-1f4f433439e1:
          x: 285
          'y': 100
