namespace: myWorkFlows
operation:
  name: addUserToAOS
  inputs:
    - username: jessica
    - password:
        sensitive: true
        default: Cloud@123
    - email: jessica.chastain@hollywood.com
    - telephone: 213-5437.325
    - firstName: Jessica
    - lastName: Chastain
  sequential_action:
    gav: 'com.microfocus.seq:myWorkFlows.addUserToAOS:1.0.0'
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
            directory: ''
            include_child_processes: true
            launch_application: true
            path: "${get_sp('AOS-mk.adminTool')}"
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
          args: "${get_sp('AOS-mk.username')}"
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '2054507424'
      - step:
          id: '2'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Password")'
          action: SetSecure
          args: "${get_sp('AOS-mk.password')}"
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '2054517840'
      - step:
          id: '3'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Server")'
          action: Set
          args: "${get_sp('AOS-mk.url')}"
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '2054521344'
      - step:
          id: '4'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("SIGN IN")'
          action: Click
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '2054503392'
      - step:
          id: '5'
          action: Script
          object_path: "'WpfWindow(\"Advantage Shop Administrator\").WpfList(\"WpfList\").Select \"SPECIAL OFFERS\""
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '2054524176'
      - step:
          id: '6'
          action: Script
          object_path: "'WpfWindow(\"Advantage Shop Administrator\").WpfList(\"WpfList\").Select \"POPULAR ITEMS\""
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '2054524176'
      - step:
          id: '7'
          action: Script
          object_path: "'WpfWindow(\"Advantage Shop Administrator\").WpfList(\"WpfList\").Select \"CONFIGURATION\""
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '2054524176'
      - step:
          id: '8'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfList("WpfList")'
          action: Select
          args: '"USERS MANAGEMENT"'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '2054524176'
      - step:
          id: '9'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("ADD USER")'
          action: Click
          snapshot: ".\\Snapshots\\ssf23.png"
          highlight_id: '2070330584'
      - step:
          id: '10'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("User Name_2")'
          action: Set
          args: 'Parameter("username")'
          snapshot: ".\\Snapshots\\ssf24.png"
          highlight_id: '2070329960'
      - step:
          id: '11'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Email")'
          action: Set
          args: 'Parameter("email")'
          snapshot: ".\\Snapshots\\ssf25.png"
          highlight_id: '2070330632'
      - step:
          id: '12'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Password")'
          action: SetSecure
          args: 'Parameter("password")'
          snapshot: ".\\Snapshots\\ssf26.png"
          highlight_id: '2070337592'
      - step:
          id: '13'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Confirm password")'
          action: SetSecure
          args: 'Parameter("password")'
          snapshot: ".\\Snapshots\\ssf27.png"
          highlight_id: '2070345992'
      - step:
          id: '14'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("First Name")'
          action: Set
          args: 'Parameter("firstName")'
          snapshot: ".\\Snapshots\\ssf28.png"
          highlight_id: '2070351032'
      - step:
          id: '15'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Last Name")'
          action: Set
          args: 'Parameter("lastName")'
          snapshot: ".\\Snapshots\\ssf29.png"
          highlight_id: '2109054248'
      - step:
          id: '16'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Phone Number")'
          action: Set
          args: 'Parameter("telephone")'
          snapshot: ".\\Snapshots\\ssf31.png"
          highlight_id: '2035681768'
      - step:
          id: '17'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("OK")'
          action: Click
          snapshot: ".\\Snapshots\\ssf30.png"
          highlight_id: '2069142576'
      - step:
          id: '18'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("Logout")'
          action: Click
          snapshot: ".\\Snapshots\\ssf32.png"
          highlight_id: '2054522784'
      - step:
          id: '19'
          object_path: 'WpfWindow("Advantage Shop Administrator")'
          action: Close
          snapshot: ".\\Snapshots\\ssf33.png"
          highlight_id: '263114'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: User Name_2
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
                      value: ;;;;;
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              name: Phone Number
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
                      value: ;;;;;
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Last Name
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
                      value: ;;;;;
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier:
                  value: 4
                  type: index
          - object:
              smart_identification: ''
              name: First Name
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
                      value: ;;;;;
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier:
                  value: 3
                  type: index
          - object:
              smart_identification: ''
              name: Email
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
                      value: ;;;;;
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - wpftypename
                  - regexpwndtitle
                  - devnamepath
                  - devname
                ordinal_identifier:
                  value: 2
                  type: index
          - object:
              smart_identification: ''
              name: Confirm password
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
                      value: PasswordConfirm_Box
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - text
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: OK
              child_objects: []
              properties:
                - property:
                    value:
                      value: OK
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
                      value: btnCreateNewUserOk
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - text
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Logout
              child_objects: []
              properties:
                - property:
                    value:
                      value: Logout
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
                      value: Logout
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
              basic_identification:
                property_ref:
                  - text
                  - devname
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: CANCEL
              child_objects: []
              properties:
                - property:
                    value:
                      value: CANCEL
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
              last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
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
        last_update_time: 'Wednesday, January 6, 2021 12:45:04 PM'
        basic_identification:
          property_ref:
            - wpftypename
            - regexpwndtitle
            - devname
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
