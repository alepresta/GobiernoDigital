Feature: Usuario Organismo
  En este caso de prueba se verificarán todos las opciciones de configuracion que puede hacer un usuario responsable de Organismo
  Se debe verificar que se puede crear área, tramites o usuarios

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear, editar o eliminar áreas
    Then se valida que se puede crear área

  @turnos_usuario_organismo
  Scenario: Se debe verificar que se puede crear, editar o eliminar Trámites
    Then se valida que se crea un Trámite

  @turnos_usuario_organismo
  Scenario: Verificar que si se selecciona crear o editar tramite el formulario tiene los campos
    Then se valida campos del formulario trámite

  @turnos_usuario_organismo
  Scenario: Verificar que si se selecciona el listado de usuarios se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el organismo correspondiente
    Then se valida que el RO puede crear usuarios