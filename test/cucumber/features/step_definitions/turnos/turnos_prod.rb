Then /^1- seleccion Turno 12 cancelarlo$/ do
  pagina = "https://turnos.argentina.gob.ar/turnos/seleccionTurno/12"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Capital Federal")
  esperar(1)
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  select_click(localidad,"Belgrano")
  capturar(:id,'puntoAtencion_0').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-puntos-atencion/div/div/button').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-dias-disponibles-turno/div/div/button').click
  # horarios inicio
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[1]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[2]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[3]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[4]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[5]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[6]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[7]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[8]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[9]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[10]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[11]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[12]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[13]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[14]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[15]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[16]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[17]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[18]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[19]/label').click
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/app-horarios-disponibles-turno/div/div/div/div/div[20]/label').click
  # horarios fin
  capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[3]/button[1]').click
  cuil = "20075980516"
  nombre = "JUAN CARLOS"
  apellido = "MANRIQUE"
  email = "automatic.test.bot@gmail.com"
  telefono = "1256987888"
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'nombre').send_keys nombre
  capturar(:id,'apellido').send_keys apellido
  capturar(:id,'email').send_keys email
  capturar(:id,'telefono').send_keys telefono
  capturar(:xpath,'/html/body/app-root/app-datos-tramite/div[2]/div/section/div/div/form/div[2]/div/button').click
  codigo_reserva = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[1]/p').text
  fecha = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[2]/p').text
  horario = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[3]/p').text
  tramite = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[4]/p').text
  punto_atencion1 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[1]').text
  punto_atencion2 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[2]').text
  puts "RESERVA DE TURNO .................................[PASSED]".blue
  puts "Código de reserva: #{codigo_reserva}".light_blue
  puts "Fecha: #{fecha}".light_blue
  puts "Horario: #{horario}".light_blue
  puts "Trámite: #{tramite}".light_blue
  puts "Punto de atención: #{punto_atencion1} , #{punto_atencion2}".light_blue
  # CANCELAR TURNO SACADO #
  capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/div/button').click
  # CONFIRMAR CANCELAR TURNO SACADO #
  capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]').click
  puts "TURNO CANCELADO.................................[PASSED]".blue
end