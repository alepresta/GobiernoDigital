Feature: Usuario Ciudadano

  En este caso de prueba se debe verificar que el ciudadano puede sacar un turno, tambien se debe verificar que puede cancelarlo de tres formas:

  1-   Si es usuario de mi argentina , ingresando a mi argentina
  2-   Puede cancelarlo en el momento despues de crearlo
  3-   O pruede cancelarlo desde el mail recibido

  @turnos_usuario_ciudadano                             @turnos_usuario_ciudadano_mi_argentina
  Scenario: 1- verificar que el ciudadano puede sacar un turno y que puede cancelarlo por mi argentina
    Then ciudadano crea un turno y lo cancela por mi argentina

  @turnos_usuario_ciudadano                             @turnos_usuario_ciudadano_pagina
  Scenario: 2- verificar que el ciudadano puede sacar un turno y que puede cancelarlo en la misma página donde lo genero
    Then ciudadano crea un turno y lo cancela por página

  @turnos_usuario_ciudadano                             @turnos_usuario_ciudadano_mail
  Scenario: 3- verificar que el ciudadano puede sacar un turno y que puede cancelarlo por mail
    Then ciudadano crea un turno y lo cancela por mail