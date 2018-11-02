Feature: Usuario Agente

  Verificar que el agente debe poder ingresar a recepcion o cualquier otra ventanilla
  Verificar que se puede seleccionar la ventanilla de recepción entrar o salir de las misma y asi con las demas ventanillas si existieran
  Verificar la atención de turnos por parte del agente y todas sus posibilidades, Devolver a recepción, en transcurso, terminado

  @turnos_usuario_agente
  Scenario: Verificar que el agente debe poder ingresar a recepcion o cualquier otra ventanilla
    Then verificar ingreso agente a ventanillas

  @turnos_usuario_agente
  Scenario: Verificar el funcionamiento de la opción DEVOLVER A RECEPCIÓN Seleccionar el botón Devolver A Recepción y verificar que el turno vuelve al inicio de donde salió por primera vez.
    Then verificar acción de botón Devolver A Recepción

  @turnos_usuario_agente
  Scenario: Verificar el funcionamiento de la opción EN TRANSCURSO verificar que al seleccionar EN TRANSCURSO se muestra un select con la fila a la que se puede enviar para continuar el turno.
    Then verificar acción de botón en transcurso

  @turnos_usuario_agente
  Scenario: Verificar el funcionamiento de la opción TERMINADO, Al seleccionar cualquiera de estas 3 opciones el tramite no se muestra más y se puede seguir atendiendo turnos si los hay.
    Then verificar se puede terminar de atendiender turnos