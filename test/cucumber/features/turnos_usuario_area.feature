Feature: Usuario Area
  Verificar que se puede Crear /Editar o Eliminar Trámites
  Verificar que si se selecciona el listado de usuarios se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el área correspondiente

  @turnos_usuario_area
  Scenario: Verificar que se puede Crear /Editar o Eliminar Trámites y puntos de atencion para ese trámite
    Then Verificar que se puede Crear /Editar o Eliminar Trámites

  @turnos_usuario_area            @turnos_usuario_area_usr
  Scenario: Se debe verificar que se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado solo para el organismo correspondiente
    Then Verificar crear usuarios con un rol igual o menor

