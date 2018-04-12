AD-Domain-Services:
  win_servermanager.installed:
    - name: AD-Domain-Services
    - force: False
    - recurse: True

DNS:
  win_servermanager.installed:
    - name: DNS
    - force: False
    - recurse: True

RSAT-NIS:
  win_servermanager.installed:
    - name: RSAT-NIS
    - force: False
    - recurse: False