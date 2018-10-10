Feature: Turno Prod
  En este caso de prueba se verificara:
  1- Que un usuario pueda sacar un turno y cancelarlo en el momento.
  Se saca un turno y se expone por pantalla (Código de reserva:,Fecha:,Horario:,Trámite:,Punto de atención:).
  Luego se cancela el turno


  Se utiliza la url: https://turnos.argentina.gob.ar/turnos/seleccionTurno/12 para sacar el turno

  @turnos_prod
  Scenario: Que un usuario pueda sacar un turno y cancelarlo en el momento
    Then 1- seleccion Turno 12 cancelarlo



