namespace: myWorkFlows
operation:
  name: loop
  inputs:
    - count
  python_action:
    use_jython: false
    script: "# do not remove the execute function \ndef execute(count): \n    # code goes here\n    count = int(count) + 1\n    return locals()\n# you can add additional helper methods below."
  results:
    - SUCCESS
