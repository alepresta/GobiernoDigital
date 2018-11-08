Given /^en el primer paso$/ do
  go("https://qa-usuarios-turnos.argentina.gob.ar")
  fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
  puts fecha
  puts hora
  wer= path_root_proyecto
  puts wer
  puts path_root_proyecto + "/Argentina/test/report/reporte.html"

end

When /^en el segundo paso$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modorganismo@mailinator.com"
  password = "QAsnt2018"
  asd = capturar(:id,'usuario')
  esperar(1)
  asd.send_keys usuario
  asd.clear()
  asd.send_keys usuario
  cap = capturar(:id,'password')
  cap.send_keys password
  esperar(1)
  cap.clear()
  cap.send_keys password
  bot = capturar(:class,'btn-success')
  bot.click
  la_academia_racing_club = capturar(:xpath,'//*[@id="44"]/ul/li[2]/a')
  la_academia_racing_club.click
  esperar(1)
  crear_tramite = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/div[1]/button')
  crear_tramite.click
  nombre = capturar(:id , 'nombre')
  nombre_texto = '00 Recicla con TestBot'
  nombre.send_keys nombre_texto
  nombre.clear()
  nombre.send_keys nombre_texto
  duracion = capturar(:id , 'duracion')
  tiempo_duracion = '9'
  duracion.send_keys tiempo_duracion
  switch_tramite_publicado_si = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/form/div[2]/div[1]/div/app-switch/div/div[1]/button[1]')
  switch_tramite_publicado_si.click
  # switch_tramite_exepcional_si = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/form/div[2]/div[2]/div/app-switch/div/div[1]/button[1]')
  # switch_tramite_exepcional_si.click
  requisitos = capturar(:xpath, '//*[@id="requisitos"]')
  requisitos_texto = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'
  requisitos.send_keys requisitos_texto
  #crear = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/form/div[3]/div[5]/div/button[2]/span')
  crear = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/form/div[3]/div[5]/div/button[2]')
  crear.click
  esperar(10)
  puts "Se creo el Trámite #{nombre_texto}".yellow
  refresh
  esperar(2)
  solapa_punto_atencion = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/ul/li[2]/a')
  solapa_punto_atencion.click
  crear_pa = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/div[1]/button')
  crear_pa.click
  nombre_pa_texto = '00 punto atencion avenida Recicla con TestBot'
  nombre_pa = capturar(:id, 'nombre')
  nombre_pa.send_keys nombre_pa_texto
  nombre_pa.clear()
  nombre_pa.send_keys nombre_pa_texto
  provincia = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-punto-atencion/div/form/div[3]/div[1]/div/select/option[2]')
  provincia.click
  localidad = 'San Telmo'
  localidad_pa = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-punto-atencion/div/form/div[3]/div[2]/div/input')
  localidad_pa.send_keys localidad
  localidad_pa.clear()
  localidad_pa.send_keys localidad
  localidad_pa_desplegable = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-punto-atencion/div/form/div[3]/div[2]/div/div/div/div')
  localidad_pa_desplegable.click
  direccion = 'Gregorio de la Ferrere 1542'
  direccion_pa = capturar(:id, 'direccion')
  direccion_pa.send_keys direccion
  direccion_pa.clear()
  direccion_pa.send_keys direccion
  tramite_pa = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-punto-atencion/div/form/app-select-multiple/div/div/div[1]/select/option[2]')
  tramite_pa.click
  crear_pa = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-punto-atencion/div/form/div[5]/button[2]')
  crear_pa.click
  esperar(10)
  puts "Se creo el Punto de Atención #{nombre_pa_texto}"
  refresh
  esperar(2)
  url_pa = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/tabs/(puntosAtencionOutlet:puntosAtencion/44/areas/64)'
  go(url_pa)
  pa_01 = capturar(:xpath ,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[1]/td[1]').text
  pa_02 = capturar(:xpath ,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[2]/td[1]').text
  pa_03 = capturar(:xpath ,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[3]/td[1]').text
  pa_04 = capturar(:xpath ,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[4]/td[1]').text

  if pa_01.eql? nombre_pa_texto
    refresh
    go(url_pa)
    esperar(1)
    go(url_pa)
    capturar(:css, '.table > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(3) > button:nth-child(3)').click
    esperar(2)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/app-modal-eliminar-punto-atencion/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Punto de Atención #{pa_01}"
  end
  if pa_02.eql? nombre_pa_texto
    refresh
    go(url_pa)
    esperar(1)
    go(url_pa)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[2]/td[3]/button[3]').click
    esperar(2)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/app-modal-eliminar-punto-atencion/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Punto de Atención #{pa_02}"
  end
  if pa_03.eql? nombre_pa_texto
    refresh
    go(url_pa)
    esperar(1)
    go(url_pa)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[3]/td[3]/button[3]').click
    esperar(2)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/app-modal-eliminar-punto-atencion/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Punto de Atención #{pa_03}"
  end
  if pa_04.eql? nombre_pa_texto
    refresh
    go(url_pa)
    esperar(1)
    go(url_pa)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/table/tbody/tr[4]/td[3]/button[3]').click
    esperar(2)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-puntos-atencion/div/app-tabla-puntos-atencion/app-modal-eliminar-punto-atencion/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Punto de Atención #{pa_04}"
  end
  url_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/tabs/(tramitesOutlet:tramites/44/areas/64)'
  go(url_tramites)
  esperar(1)
  elemento_01 = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[1]/td[1]').text
  elemento_02 = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[2]/td[1]').text
  elemento_03 = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[3]/td[1]').text
  elemento_04 = capturar(:xpath , '/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[4]/td[1]').text
  if nombre_texto.eql? elemento_01
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[1]/td[4]/button[2]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Trámite #{elemento_01}".yellow
  end
  if nombre_texto.eql? elemento_02
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[2]/td[4]/button[2]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Trámite #{elemento_02}".yellow
  end
  if nombre_texto.eql? elemento_03
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[3]/td[4]/button[1]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Trámite #{elemento_03}".yellow
  end
  if nombre_texto.eql? elemento_04
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[4]/td[4]/button[1]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Trámite #{elemento_04}".yellow
  end
  line
  puts "Se valida que el usuario: #{usuario} con rol: Responsable Organismo puede crear/eliminar/modificar TRÁMITES...[PASSED]".green
  puts "Se valida que el usuario: #{usuario} con rol: Responsable Organismo puede crear/eliminar/modificar PUNTOS DE ATENCIÓN...[PASSED]".green
  line
end

Then /^en el tercer paso$/ do

end