namespace: myWorkFlows
operation:
  name: testme2
  sequential_action:
    gav: 'com.microfocus.seq:myWorkFlows.testme2:1.0.0'
    skills:
      - Java
      - SAP NWBC Desktop
      - SAP
      - SAPUI5
      - SAPWDJ
      - SAPWebExt
      - Terminal Emulators
      - UI Automation
      - Web
      - WPF
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: true
        apps:
          app_1:
            args: ''
            path: "${get_sp('AOS-mk.adminTool')}"
            directory: ''
      terminal_settings:
        active: false
        current_emulator: Rumba 9.5
      web:
        active: false
        address: ''
        browser: IE64
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("User Name")'
          action: Set
          args: '"admin"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '2051020504'
      - step:
          id: '2'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Password")'
          action: SetSecure
          args: '"adm1n"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '2043822040'
      - step:
          id: '3'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Server")'
          action: Set
          args: '"http://rpa.mf-te.com:8080"'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '2043825112'
      - step:
          id: '4'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("SIGN IN")'
          action: Click
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '2043868984'
      - step:
          id: '5'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfImage("WpfImage")'
          action: Click
          args: '52,27'
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '2023106976'
      - step:
          id: '6'
          action: Script
          object_path: "'WpfWindow(\"Advantage Shop Administrator\").WpfImage(\"WpfImage\").Click 52,29"
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '2023106976'
      - step:
          id: '7'
          action: Script
          object_path: "'WpfWindow(\"Advantage Shop Administrator\").WpfImage(\"WpfImage\").DblClick 52,29"
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: '2023106976'
      - step:
          id: '8'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfObject("PRODUCTS")'
          action: Click
          args: '21,8'
          snapshot: ".\\Snapshots\\ssf11.png"
          highlight_id: '2052776744'
      - step:
          id: '9'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfList("WpfList")'
          action: Select
          args: '"POPULAR ITEMS"'
          snapshot: ".\\Snapshots\\ssf12.png"
          highlight_id: '2043848248'
      - step:
          id: '10'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfList("WpfList")'
          action: Select
          args: '"CONFIGURATION"'
          snapshot: ".\\Snapshots\\ssf13.png"
          highlight_id: '2043848248'
      - step:
          id: '11'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfList("WpfList")'
          action: Select
          args: '"USERS MANAGEMENT"'
          snapshot: ".\\Snapshots\\ssf14.png"
          highlight_id: '2043848248'
      - step:
          id: '12'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("ADD USER")'
          action: Click
          snapshot: ".\\Snapshots\\ssf15.png"
          highlight_id: '2053022120'
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification: ''
        name: Advantage Shop Administrator
        child_objects:
          - object:
              smart_identification: ''
              name: PRODUCTS
              child_objects: []
              properties:
                - property:
                    value:
                      value: SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Text
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ItemLabel
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfObject
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: WpfList
              child_objects: []
              properties:
                - property:
                    value:
                      value: list view
                      regular_expression: false
                    name: wpftypename
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SelectionPatternIdentifiers.Pattern;ScrollPatternIdentifiers.Pattern;ItemContainerPatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Advantage Shop Administrator
                      regular_expression: false
                    name: regexpwndtitle
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: List
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ;;;
                      regular_expression: false
                    name: devnamepath
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfList
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: WpfImage
              child_objects: []
              properties:
                - property:
                    value:
                      value: image
                      regular_expression: false
                    name: wpftypename
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Image
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfImage
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: User Name
              child_objects: []
              properties:
                - property:
                    value:
                      value: edit
                      regular_expression: false
                    name: wpftypename
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: RangeValuePatternIdentifiers.Pattern;ValuePatternIdentifiers.Pattern;ScrollPatternIdentifiers.Pattern;TextPatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Advantage Shop Administrator
                      regular_expression: false
                    name: regexpwndtitle
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ;;;
                      regular_expression: false
                    name: devnamepath
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfEdit
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier:
                  value: 0
                  type: index
          - object:
              smart_identification: ''
              name: Server
              child_objects: []
              properties:
                - property:
                    value:
                      value: edit
                      regular_expression: false
                    name: wpftypename
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: RangeValuePatternIdentifiers.Pattern;ValuePatternIdentifiers.Pattern;ScrollPatternIdentifiers.Pattern;TextPatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Advantage Shop Administrator
                      regular_expression: false
                    name: regexpwndtitle
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ;;;
                      regular_expression: false
                    name: devnamepath
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfEdit
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier:
                  value: 1
                  type: index
          - object:
              smart_identification: ''
              name: Password
              child_objects: []
              properties:
                - property:
                    value:
                      value: RangeValuePatternIdentifiers.Pattern;ValuePatternIdentifiers.Pattern;ScrollPatternIdentifiers.Pattern;TextPatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Password_Box
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfEdit
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: SIGN IN
              child_objects: []
              properties:
                - property:
                    value:
                      value: SIGN IN
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: InvokePatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: SIGN IN
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfButton
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - text
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: ADD USER
              child_objects: []
              properties:
                - property:
                    value:
                      value: ADD USER
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: InvokePatternIdentifiers.Pattern;SynchronizedInputPatternIdentifiers.Pattern
                      regular_expression: false
                    name: supported automation patterns
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: localized control type
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: devname
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ''
                  name: typeinfo
                  type: STRING
              class: WpfButton
              visual_relations: ''
              last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
              basic_identification:
                property_ref:
                  - text
                  - devname
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: window
                regular_expression: false
              name: wpftypename
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: TransformPatternIdentifiers.Pattern;WindowPatternIdentifiers.Pattern
                regular_expression: false
              name: supported automation patterns
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Advantage Shop Administrator
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: Window
                regular_expression: false
              name: localized control type
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Advantage Shop Administrator
                regular_expression: false
              name: devname
              hidden: false
              read_only: false
              type: STRING
        comments: ''
        custom_replay: ''
        class: WpfWindow
        visual_relations: ''
        last_update_time: 'Thursday, January 7, 2021 4:02:45 PM'
        basic_identification:
          property_ref:
            - wpftypename
            - regexpwndtitle
            - devname
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
