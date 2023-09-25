{% import 'pillar_conf.jinja' as conf %}
create_dirs:
  app:
    dir_name: /work/app/
    dir_user: {{ conf.user }}
    dir_group: {{ conf.group }}
  log:
    dir_name: /work/log/
    dir_user: {{ conf.user }}
    dir_group: {{ conf.group }}