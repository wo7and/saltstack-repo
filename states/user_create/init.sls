{{ pillar['user'] }}:
  user.present:
    - fullname: {{ pillar['fullname']}}
    - home: {{ '/home/' ~ pillar['user']}}
    - shell: /bin/bash
    - usergroup: True



