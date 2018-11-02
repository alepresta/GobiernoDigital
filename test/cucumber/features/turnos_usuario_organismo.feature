Feature: Usuario Organismo
  En este caso de prueba se verificarán todos las opciciones de configuracion que puede hacer un usuario responsable de Organismo
  Se debe verificar que se puede crear área, tramites o usuarios


  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear área
    Then verificar crear area usuario organismo

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear tramites
    Then verificar crear trámites usuario organismo

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear usuarios
    Then verificar crear usuarios como usuario organismo