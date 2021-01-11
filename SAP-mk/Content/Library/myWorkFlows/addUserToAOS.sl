namespace: myWorkFlows
operation:
  name: addUserToAOS
  inputs:
    - login
    - firstname
    - lastname
    - password
    - email
    - telephone
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
          args: '"admin"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '2060358696'
      - step:
          id: '2'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Password")'
          action: SetSecure
          args: '"adm1n"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '2062899992'
      - step:
          id: '3'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Server")'
          action: Set
          args: '"http://rpa.mf-te.com:8080"'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '2062682184'
      - step:
          id: '4'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("SIGN IN")'
          action: Click
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '1894298224'
      - step:
          id: '6'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfObject("PRODUCTS")'
          action: Click
          args: '40,12'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '1947077488'
      - step:
          id: '7'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfList("WpfList")'
          action: Select
          args: '"USERS MANAGEMENT"'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '1949111088'
      - step:
          id: '9'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("ADD USER")'
          action: Click
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '2026512736'
      - step:
          id: '10'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("User Name_2")'
          action: Set
          args: 'Parameter("login")'
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '2062767152'
      - step:
          id: '11'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Email")'
          action: Set
          args: 'Parameter("email")'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '2063636800'
      - step:
          id: '12'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Password")'
          action: Set
          args: 'Parameter("password")'
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: '2064048800'
      - step:
          id: '13'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Confirm password")'
          action: Set
          args: 'Parameter("password")'
          snapshot: ".\\Snapshots\\ssf11.png"
          highlight_id: '2060819696'
      - step:
          id: '14'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("First Name")'
          action: Set
          args: 'Parameter("firstname")'
          snapshot: ".\\Snapshots\\ssf12.png"
          highlight_id: '2060817632'
      - step:
          id: '15'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Last Name")'
          action: Set
          args: 'Parameter("lastname")'
          snapshot: ".\\Snapshots\\ssf13.png"
          highlight_id: '2061261008'
      - step:
          id: '16'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfEdit("Phone Number")'
          action: Set
          args: 'Parameter("telephone")'
          snapshot: ".\\Snapshots\\ssf15.png"
          highlight_id: '2063427472'
      - step:
          id: '17'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("OK")'
          action: Click
          snapshot: ".\\Snapshots\\ssf14.png"
          highlight_id: '2050857328'
      - step:
          id: '18'
          object_path: 'WpfWindow("Advantage Shop Administrator").WpfButton("Logout")'
          action: Click
          snapshot: ".\\Snapshots\\ssf16.png"
          highlight_id: '2063420032'
      - step:
          id: '19'
          object_path: 'WpfWindow("Advantage Shop Administrator")'
          action: Close
          snapshot: ".\\Snapshots\\ssf17.png"
          highlight_id: '1967542'
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
              name: USERS MANAGEMENT
              child_objects: []
              properties:
                - property:
                    value:
                      value: object
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
                      value: Advantage Shop Administrator
                      regular_expression: false
                    name: regexpwndtitle
                    hidden: false
                    read_only: false
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
                      value: ItemLabel;AdvantageShopAdministrator.Models.ManagMenuItemModel;;;;;
                      regular_expression: false
                    name: devnamepath
                    hidden: false
                    read_only: false
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
              last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
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
        last_update_time: 'Thursday, January 7, 2021 4:41:21 PM'
        basic_identification:
          property_ref:
            - wpftypename
            - regexpwndtitle
            - devname
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
