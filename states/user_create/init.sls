{{ pillar['group']}}:
  group.present

{{ pillar['user'] }}:
  user.present:
    - fullname: {{ pillar['fullname']}}
    - home: {{ '/home/' ~ pillar['user']}}
    - shell: /bin/bash
    - usergroup: True
    - groups: 
      - {{ pillar['group']}}
    - require:
      - group: {{ pillar['group']}}

{{ pillar['app_group'] }}:
  group.present

{{ pillar['app_user'] }}:
  user.present:
    - home: {{ pillar['create_dirs']['app']['dir_name'] ~ pillar['app_user'] }}
    - shell: /bin/bash
    - groups: 
      - {{ pillar['app_group']}}
    - require:
      - group: {{ pillar['app_group']}}
      - file: app_create

