#!!
#! @description: <script>alert(1)</script>
#! @output flow_output_0: <script>alert(1)</script>
#!!#
namespace: aaa
flow:
  name: ssss
  inputs:
    - flow_input_1
    - flow_input_0
  workflow:
    - ssss:
        loop:
          for: '<>& in apply'
          do:
            aaa.ssss:
              - flow_input_1: '${<script>alert(1)</script>}'
              - flow_input_0: '${<script>alert(1)</script>}'
          break: []
          publish:
            - '&#60;&#60;': '${output_0<script>alert(1)</script>}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE
  outputs:
    - flow_output_0:
        value: '${&#60;&#60;}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ssss:
        x: 217
        y: 159
        navigate:
          2a1e8819-3b17-c2af-1541-ad0a598cfd94:
            targetId: 31386c99-6854-4cf3-b94a-2048a5ade8f6
            port: SUCCESS
          1d44d300-d7ee-1aa5-49e1-6b967373f7c2:
            targetId: 2c46051c-0a51-1122-d21d-16d5f77c89e1
            port: FAILURE
    results:
      FAILURE:
        2c46051c-0a51-1122-d21d-16d5f77c89e1:
          x: 55
          y: 190
      SUCCESS:
        31386c99-6854-4cf3-b94a-2048a5ade8f6:
          x: 360
          y: 174
