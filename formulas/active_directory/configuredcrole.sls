{% from "formulas/active_directory/map.jinja" import forest with context %}
{%- if salt['grains.get']('osrelease') in [ '2012Server', '2012ServerR2' ] -%}
import_module:
  cmd.run:
    - name: "Import-Module ADDSDeployment;"
    - shell: powershell
    - env:
      - ExecutionPolicy: "bypass"
    - runas: "vagrant"
    - password: "vagrant"
install_ds:
  cmd.run:
    - name: "Install-ADDSForest -DomainMode {{ forest.DomainMode }} -DomainName {{ forest.DomainName }} -DomainNetBIOSName {{ forest.DomainNetBIOSName }} -ForestMode {{ forest.ForestMode }} -SafeModeAdministratorPassword (ConvertTo-SecureString {{ forest.SafeModeAdministratorPassword }} -AsPlainText -Force) -Force -NoRebootOnCompletion"
    - shell: powershell
    - env: 
      - ExecutionPolicy: "bypass"
    - runas: "vagrant"
    - password: "vagrant"
{% endif %}