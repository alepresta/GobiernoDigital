Feature: Usuario Area
  Verificar que se puede Crear /Editar o Eliminar Trámites
  Verificar que si se selecciona el listado de usuarios se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el área correspondiente

  @turnos_usuario_area
  Scenario: Verificar que se puede Crear /Editar o Eliminar Trámites
    Then Verificar que se puede Crear /Editar o Eliminar Trámites
    Then Verificar que el tramite tiene los campos

  @turnos_usuario_area
  Scenario: Verificar que se puede Crear /Editar o Eliminar Usuarios
    Then Verificar crear usuarios con un rol igual o menor