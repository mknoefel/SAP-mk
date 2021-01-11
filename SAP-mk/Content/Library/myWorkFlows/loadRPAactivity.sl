namespace: myWorkFlows
operation:
  name: loadRPAactivity
  inputs:
  - login: ''
  - firstname: ''
  - lastname: ''
  - password: ''
  - email: ''
  - telephone: ''
  sequential_action:
    gav: com.microfocus.seq:myWorkFlows.loadRPAactivity:1.0.0
    steps:
    - step:
        id: '1'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("User Name")
        action: Set
        default_args: '"admin"'
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '2060358696'
    - step:
        id: '2'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Password")
        action: SetSecure
        default_args: '"adm1n"'
        snapshot: .\Snapshots\ssf3.png
        highlight_id: '2062899992'
    - step:
        id: '3'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Server")
        action: Set
        default_args: '"http://rpa.mf-te.com:8080"'
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '2062682184'
    - step:
        id: '4'
        object_path: WpfWindow("Advantage Shop Administrator").WpfButton("SIGN IN")
        action: Click
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '1894298224'
    - step:
        id: '6'
        object_path: WpfWindow("Advantage Shop Administrator").WpfObject("PRODUCTS")
        action: Click
        default_args: 40,12
        snapshot: .\Snapshots\ssf6.png
        highlight_id: '1947077488'
    - step:
        id: '7'
        object_path: WpfWindow("Advantage Shop Administrator").WpfList("WpfList")
        action: Select
        default_args: '"USERS MANAGEMENT"'
        snapshot: .\Snapshots\ssf9.png
        highlight_id: '1949111088'
    - step:
        id: '9'
        object_path: WpfWindow("Advantage Shop Administrator").WpfButton("ADD USER")
        action: Click
        snapshot: .\Snapshots\ssf7.png
        highlight_id: '2026512736'
    - step:
        id: '10'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("User Name_2")
        action: Set
        default_args: Parameter("login")
        snapshot: .\Snapshots\ssf8.png
        highlight_id: '2062767152'
    - step:
        id: '11'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Email")
        action: Set
        default_args: Parameter("email")
        snapshot: .\Snapshots\ssf9.png
        highlight_id: '2063636800'
    - step:
        id: '12'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Password")
        action: Set
        default_args: Parameter("password")
        snapshot: .\Snapshots\ssf10.png
        highlight_id: '2064048800'
    - step:
        id: '13'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Confirm password")
        action: Set
        default_args: Parameter("password")
        snapshot: .\Snapshots\ssf11.png
        highlight_id: '2060819696'
    - step:
        id: '14'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("First Name")
        action: Set
        default_args: Parameter("firstname")
        snapshot: .\Snapshots\ssf12.png
        highlight_id: '2060817632'
    - step:
        id: '15'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Last Name")
        action: Set
        default_args: Parameter("lastname")
        snapshot: .\Snapshots\ssf13.png
        highlight_id: '2061261008'
    - step:
        id: '16'
        object_path: WpfWindow("Advantage Shop Administrator").WpfEdit("Phone Number")
        action: Set
        default_args: Parameter("telephone")
        snapshot: .\Snapshots\ssf15.png
        highlight_id: '2063427472'
    - step:
        id: '17'
        object_path: WpfWindow("Advantage Shop Administrator").WpfButton("OK")
        action: Click
        snapshot: .\Snapshots\ssf14.png
        highlight_id: '2050857328'
    - step:
        id: '18'
        object_path: WpfWindow("Advantage Shop Administrator").WpfButton("Logout")
        action: Click
        snapshot: .\Snapshots\ssf16.png
        highlight_id: '2063420032'
    - step:
        id: '19'
        object_path: WpfWindow("Advantage Shop Administrator")
        action: Close
        snapshot: .\Snapshots\ssf17.png
        highlight_id: '1967542'
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: WpfWindow
      name: Advantage Shop Administrator
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
      basic_identification:
        property_ref:
        - wpftypename
        - regexpwndtitle
        - devname
        ordinal_identifier: ''
      smart_identification: ''
      custom_replay: ''
      comments: ''
      visual_relations: ''
      last_update_time: Thursday, January 7, 2021 4:41:21 PM
      child_objects:
      - object:
          class: WpfObject
          name: USERS MANAGEMENT
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 1
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfObject
          name: PRODUCTS
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
          basic_identification:
            property_ref:
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfList
          name: WpfList
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: User Name_2
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 1
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: User Name
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 0
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Server
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 1
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Phone Number
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 0
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Password
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
          basic_identification:
            property_ref:
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Last Name
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 4
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: First Name
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 3
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Email
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
          basic_identification:
            property_ref:
            - wpftypename
            - regexpwndtitle
            - devnamepath
            - devname
            ordinal_identifier:
              value: 2
              type: index
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfEdit
          name: Confirm password
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
          basic_identification:
            property_ref:
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfButton
          name: SIGN IN
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
          basic_identification:
            property_ref:
            - text
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfButton
          name: OK
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
          basic_identification:
            property_ref:
            - text
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfButton
          name: Logout
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
          basic_identification:
            property_ref:
            - text
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
      - object:
          class: WpfButton
          name: ADD USER
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
          basic_identification:
            property_ref:
            - text
            - devname
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ''
              name: typeinfo
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Thursday, January 7, 2021 4:41:21 PM
          child_objects: []
  check_points_and_outputs: []
  parameters: []
