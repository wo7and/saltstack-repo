{# loop to create directories from pillar list #}
{% for dir, dir_args in salt['pillar.get']('create_dirs',{}).items() %}
{{ dir ~ '_create' }}:
  file.directory:
    - name: 
    - user: 
    - group: 
    - makedirs: True
    {% if dir_args['dir_mode'] is defined %}
    - mode: {{ dir_args['dir_mode'] }}
    {% else %}
    - mode: 750
{% endfor %}
    