namespace: aaa
flow:
  name: ssss
  workflow:
    - ssss:
        loop:
          for: '<>& in apply'
          do:
            aaa.ssss: []
          break: []
          publish:
            - '&#60;&#60;': '${output_0<script>alert(1)</script>}'
        navigate: []
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ssss:
        x: 217
        y: 159
    results:
      FAILURE:
        2c46051c-0a51-1122-d21d-16d5f77c89e1:
          x: 55
          y: 190
      SUCCESS:
        31386c99-6854-4cf3-b94a-2048a5ade8f6:
          x: 360
          y: 174
