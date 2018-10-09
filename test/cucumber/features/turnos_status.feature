Feature: Turnos Status
  En este caso de prueba se verificará que las siguientes urls tengan status(200):

  1- https://turnos-api.argentina.gob.ar
  2- https://filas-api.argentina.gob.ar/
  3- https://filas.argentina.gob.ar
  4- https://usuarios-turnos.argentina.gob.ar/
  5- http://carteleras-filas.argentina.gob.ar
  6- https://usuarios-turnos-api.argentina.gob.ar

  @turnos_status
  Scenario: 1
    Then verificar https turnos-api argentina.gob.ar

  @turnos_status
  Scenario: 2
    Then https filas-api.argentina.gob.ar

  @turnos_status
  Scenario: 3
    Then https filas.argentina.gob.ar

  @turnos_status
  Scenario: 4
    Then https usuarios-turnos.argentina.gob.ar

  @turnos_status
  Scenario: 5
    Then http carteleras-filas.argentina.gob.ar

  @turnos_status
  Scenario: 6
    Then https usuarios-turnos-api.argentina.gob.ar