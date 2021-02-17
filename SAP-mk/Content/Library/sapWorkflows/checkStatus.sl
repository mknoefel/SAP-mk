namespace: sapWorkflows
flow:
  name: checkStatus
  workflow:
    - statusInstance00:
        do:
          sapWorkflows.status_S4HANA:
            - instance: '00'
            - sapcontrol: "${get_sp('sapcontrol')}"
            - host: "${get_sp('s4hanaHost')}"
            - username: "${get_sp('s4User')}"
            - password: "${get_sp('s4Passwd')}"
        navigate:
          - FAILURE: on_failure
          - SUCCESS: statusInstance01
    - statusInstance01:
        do:
          sapWorkflows.status_S4HANA:
            - instance: '01'
            - sapcontrol: "${get_sp('sapcontrol')}"
            - host: "${get_sp('s4hanaHost')}"
            - username: "${get_sp('s4User')}"
            - password: "${get_sp('s4Passwd')}"
        navigate:
          - FAILURE: on_failure
          - SUCCESS: statusDb
    - statusDb:
        do:
          sapWorkflows.status_S4HANA:
            - instance: '00'
            - sapcontrol: "${get_sp('hanacontrol')}"
            - host: "${get_sp('dbHost')}"
            - username: "${get_sp('dbUser')}"
            - password: "${get_sp('dbPasswd')}"
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      statusInstance00:
        x: 50
        'y': 85
      statusInstance01:
        x: 222
        'y': 88
      statusDb:
        x: 382
        'y': 93
        navigate:
          ac78232c-14c7-6976-ee39-9a3e5acacc40:
            targetId: f1f2888d-2163-8b26-0696-cad92d40b1cb
            port: SUCCESS
    results:
      SUCCESS:
        f1f2888d-2163-8b26-0696-cad92d40b1cb:
          x: 558
          'y': 95
