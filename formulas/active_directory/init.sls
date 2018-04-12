{% from "formulas/active_directory/map.jinja" import forest with context %}

include:
  - formulas.active_directory.installdcroles
  - formulas.active_directory.configuredcrole

