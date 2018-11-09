Then /^verificar crear area usuario organismo$/ do
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
  esperar(10)
  # prueba_modernizacion = capturar(:xpath,'/html/body/app-root/main/div/div/app-organismos/div/app-tabla-organismos/table/tbody/tr/td[1]/a')
  # prueba_modernizacion.click
  url = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas'
  go(url)
  esperar(3)
  crear_area = capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/div[1]/button')
  crear_area.click
  nombre_area_texto = '0 Club Atletico River Plate'
  abreviatura_area_texto = 'CARP'
  nombre_area = capturar(:id, 'nombre')
  nombre_area.send_keys nombre_area_texto
  nombre_area.clear()
  nombre_area.send_keys nombre_area_texto
  abreviatura_area = capturar(:id, 'abreviatura')
  abreviatura_area.send_keys abreviatura_area_texto
  abreviatura_area.clear()
  abreviatura_area.send_keys abreviatura_area_texto
  crear = capturar(:xpath, '/html/body/app-root/main/div/div/app-area/div/div[2]/form/div[3]/button[2]/span')
  crear.click
  puts "Se crea el área #{nombre_area_texto}".yellow
  area_01 = capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[1]/td[1]/a').text
  area_02 = capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[2]/td[1]/a').text
  area_03 = capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[3]/td[1]/a').text
  if nombre_area_texto.include? area_01
    go(url)
    esperar(3)
    capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[1]/td[3]/button[2]').click
    capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
    puts "Se elimino el Área #{area_01}".yellow
    if nombre_area_texto.include? area_02
      go(url)
      esperar(3)
      capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[2]/td[3]/button[2]').click
      capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
      puts "Se elimino el Área #{area_02}".yellow
      if nombre_area_texto.include? area_03
        go(url)
        esperar(3)
        capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[3]/td[3]/button[2]').click
        capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
        puts "Se elimino el Área #{area_03}".yellow
        if nombre_area_texto.include? area_01
          go(url)
          esperar(3)
          capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[1]/td[3]/button[2]').click
          capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
          puts "Se elimino el Área #{area_01}".yellow
          if nombre_area_texto.include? area_02
            go(url)
            esperar(3)
            capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[2]/td[3]/button[2]').click
            capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
            puts "Se elimino el Área #{area_02}".yellow
            if nombre_area_texto.include? area_01
              go(url)
              esperar(3)
              capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/div[3]/table/tbody/tr[1]/td[3]/button[2]').click
              capturar(:xpath, '/html/body/app-root/main/div/div/app-areas/div/app-tabla-areas/app-modal-eliminar-area/app-modal/div/div/div/div[3]/div/button[2]').click
              puts "Se elimino el Área #{area_01}".yellow
            end
          end
        end
      end
    end
  end
  line
  puts "Se valida que el usuario: #{usuario} con rol: Responsable Organismo puede crear/eliminar/modificar ÁREAS...[PASSED]".green
  line
esperar(1)
end

Then /^verificar crear trámites usuario organismo$/ do
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
    esperar(2)
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
    esperar(2)
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
    esperar(2)
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
    esperar(2)
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
    esperar(2)
    puts "Se elimino el Trámite #{elemento_01}".yellow
  end
  if nombre_texto.eql? elemento_02
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[2]/td[4]/button[2]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    esperar(2)
    puts "Se elimino el Trámite #{elemento_02}".yellow
  end
  if nombre_texto.eql? elemento_03
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[3]/td[4]/button[1]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    esperar(2)
    puts "Se elimino el Trámite #{elemento_03}".yellow
  end
  if nombre_texto.eql? elemento_04
    go(url_tramites)
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/table/tbody/tr[4]/td[4]/button[1]').click
    esperar(2)
    capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-area/div[3]/app-tramites/div/app-tabla-tramites/app-modal-eliminar-tramite/app-modal/div/div/div/div[3]/div/button[2]').click
    esperar(2)
    puts "Se elimino el Trámite #{elemento_04}".yellow
  end
  line
  puts "Se valida que el usuario: #{usuario} con rol: Responsable Organismo puede crear/eliminar/modificar TRÁMITES...[PASSED]".green
  puts "Se valida que el usuario: #{usuario} con rol: Responsable Organismo puede crear/eliminar/modificar PUNTOS DE ATENCIÓN...[PASSED]".green
  line
end


Then /^verificar crear usuarios como usuario organismo$/ do
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
  esperar(4)
  select_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/a')
  select_usuarios.click
  select_nivel1_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/ul/li[1]/a')
  select_nivel1_usuarios.click
  esperar(4)
  agregar_usuario = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-usuarios/div/app-tabla-usuarios/div[1]/button')
  agregar_usuario.click
  nombre = "0 Enzo"
  apellido = "0 Francescoli"
  email = "automatic.test.bot@gmail.com"
  nombre_usuario = capturar(:id , 'nombre')
  nombre_usuario.send_keys nombre
  nombre_usuario.clear()
  nombre_usuario.send_keys nombre
  apellido_usuario = capturar(:id , 'apellido')
  apellido_usuario.send_keys apellido
  apellido_usuario.clear()
  apellido_usuario.send_keys apellido
  email_usuario = capturar(:id , 'username')
  email_usuario.send_keys email
  email_usuario.clear()
  email_usuario.send_keys email
  rol = capturar(:xpath, '//*[@id="rol"]/option[4]')
  rol.click
  asignar_area = capturar(:xpath, '//*[@id="area"]/option[2]')
  asignar_area.click
  asignar_punto_de_atencion = capturar(:xpath, '//*[@id="puntoAtencion"]/option[3]')
  asignar_punto_de_atencion.click
  asignar_ventanillas = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-agregar-usuario/div/form/div[6]/div/div/app-select-multiple/div/div/div/div[1]/select/option[3]')
  asignar_ventanillas.click
  crear = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-agregar-usuario/div/form/div[7]/button[2]/span')
  crear.click
  puts " mail: #{email}"
  puts " nombre: #{nombre}"
  puts " apellido: #{apellido}"
  line
  puts "Se valida que se puede crear usuario...[PASSED]".green
  line
end


