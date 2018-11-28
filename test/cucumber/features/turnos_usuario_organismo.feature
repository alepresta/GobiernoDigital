Feature: Usuario Organismo
  En este caso de prueba se verificarán todos las opciciones de configuracion que puede hacer un usuario responsable de Organismo
  Se debe verificar que se puede crear área
  Se debe verificar que se puede crear área, tramites o usuarios
  Se debe verificar que se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el organismo correspondiente

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear área
    Then verificar crear area usuario organismo

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear tramites y puntos de atencion para ese trámite
    Then verificar crear trámites usuario organismo

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el organismo correspondiente
    Then verificar crear usuarios como usuario organismo