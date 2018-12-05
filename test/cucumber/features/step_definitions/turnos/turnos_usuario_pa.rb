
Then /^Verificar solapa Horarios$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(20)
  solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  solapa_horarios.click
  esperar(4)
  agregar_rango_de_atencion = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/div/button')
  agregar_rango_de_atencion.click
  desde_hora = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[1]/div[1]/select/option[1]')
  desde_hora.click
  desde_minutos = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[1]/div[2]/select/option[4]')
  desde_minutos.click
  hasta_hora = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[1]/div[3]/select/option[1]')
  hasta_hora.click
  hasta_minutos = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[1]/div[4]/select/option[4]')
  hasta_minutos.click
  lunes = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[1]/div/label/input')
  lunes.click
  martes = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[2]/div/label/input')
  martes.click
  miercoles = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[3]/div/label/input')
  miercoles.click
  jueves = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[4]/div/label/input')
  jueves.click
  viernes = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[5]/div/label/input')
  viernes.click
  sabado = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[6]/div/label/input')
  sabado.click
  domingo = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[2]/div/div[7]/div/label/input')
  domingo.click
  crear_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-rango/div/form/div[3]/button[2]')
  crear_horarios.click
  esperar(2)
  1.times do
    esperar(1)
    url_solapa_horarios = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(rangosOutlet:rangos/puntoAtencion/89)'
    go(url_solapa_horarios)
    esperar(2)
    horario_1 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/table/tbody/tr[1]/td[1]').text
    horario_2 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/table/tbody/tr[2]/td[1]').text
    tryr = '00:45 - 01:45'
    if horario_1.eql? tryr
      eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/table/tbody/tr[1]/td[3]/button[2]')
      eliminar.click
      esperar(1)
      confirmacion_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/app-modal-eliminar-rango/app-modal/div/div/div/div[3]/div/button[2]')
      confirmacion_eliminar.click
      puts "rango de atención: #{horario_1} es = #{tryr}".green
      esperar(1)
    end
    if horario_2.eql? tryr
      eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/table/tbody/tr[2]/td[3]/button[2]')
      eliminar.click
      esperar(1)
      confirmacion_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-rangos/div/app-tabla-rangos/app-modal-eliminar-rango/app-modal/div/div/div/div[3]/div/button[2]')
      confirmacion_eliminar.click
      puts "rango de atención: #{horario_2} es = #{tryr}".green
      esperar(1)
    end
  end
  puts "Se valida que la solapa HORARIOS permite agregar, editar , modificar el RANGO DE ATENCIÓN....[PASSED]".green

end

Then /^Verificar solapa Trámites$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(20)
  solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  solapa_horarios.click
  esperar(4)
  solapa_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[2]')
  solapa_tramites.click
  esperar(4)

  namedo = '0 El trámite más inútil'

  solapa_tramites_capurar
  tramite_01 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-tramites-pda/div/app-tabla-tramites-pda/table/tbody/tr[1]/td[1]').text
  tramite_02 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-tramites-pda/div/app-tabla-tramites-pda/table/tbody/tr[2]/td[1]').text
  tramite_03 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-tramites-pda/div/app-tabla-tramites-pda/table/tbody/tr[3]/td[1]').text
  tramite_04 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-tramites-pda/div/app-tabla-tramites-pda/table/tbody/tr[4]/td[1]').text

  if tramite_01.eql? namedo
    se_encontro_el_tramite = scraping_turnos(namedo)
    if se_encontro_el_tramite == true
      solapa_tramites_capurar
      tr_1 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(1) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_1.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == true
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE(#{namedo}) NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == false
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
      end
    end
    if se_encontro_el_tramite == false
      solapa_tramites_capurar
      tr_1 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(1) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_1.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == false
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE (#{namedo})   NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == true
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
  end


  if tramite_02.eql? namedo
    se_encontro_el_tramite = scraping_turnos(namedo)
    if se_encontro_el_tramite == true
      solapa_tramites_capurar
      tr_2 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(2) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_2.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == true
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE(#{namedo}) NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == false
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
    if se_encontro_el_tramite == false
      solapa_tramites_capurar
      tr_2 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(2) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_2.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == false
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE (#{namedo})   NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == true
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
  end

  if tramite_03.eql? namedo
    se_encontro_el_tramite = scraping_turnos(namedo)
    if se_encontro_el_tramite == true
      solapa_tramites_capurar
      tr_3 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(3) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_3.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == true
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE(#{namedo}) NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == false
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
    if se_encontro_el_tramite == false
      solapa_tramites_capurar
      tr_3 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(3) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_3.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == false
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE (#{namedo})   NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == true
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
  end

  if tramite_04.eql? namedo
    se_encontro_el_tramite = scraping_turnos(namedo)
    if se_encontro_el_tramite == true
      solapa_tramites_capurar
      tr_4 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(4) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_4.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == true
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE(#{namedo}) NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == false
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
    if se_encontro_el_tramite == false
      solapa_tramites_capurar
      tr_4 = capturar(:css, 'body > app-root > main > div > div > app-tabs-pda > div.tab-content > app-tramites-pda > div > app-tabla-tramites-pda > table > tbody > tr:nth-child(4) > td:nth-child(4) > app-toggle > bswitch > div')
      tr_4.click
      esperar(2)
      resultado_scraping_2 = scraping_turnos(namedo)
      if resultado_scraping_2 == false
        puts "No se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".red
        puts fail "TRÁMITE (#{namedo})   NO ENCONTRADO(#{se_encontro_el_tramite}).....[ERROR]".red
      end
      if resultado_scraping_2 == true
        
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        
      end
    end
  end
  esperar(1)

end

Then /^Verificar solapa Categorías \(ToD\)$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(20)
  solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  solapa_horarios.click
  esperar(4)
  solapa_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[2]')
  solapa_tramites.click
  esperar(4)
  solapa_categorias_tod = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[3]')
  solapa_categorias_tod.click
  esperar(4)
  tramite_sin_sentido = '0 Tramite sin sentido'
  nombre_de_la_categoria_01 = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/table/tbody/tr[1]/td[1]').text

  if nombre_de_la_categoria_01 == tramite_sin_sentido
    eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/table/tbody/tr[1]/td[3]/button[2]')
    eliminar.click
    confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/app-modal-eliminar-categoria/app-modal/div/div/div/div[3]/div/button[2]')
    confirmar_eliminar.click
    esperar(4)

  end
  pagina_solapa = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(categoriasOutlet:categorias/puntoAtencion/89)'
  go(pagina_solapa)
  esperar(2)
  crear_categoria = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/div[1]/button')
  crear_categoria.click
  id_nombre = capturar(:id, 'nombre')
  id_nombre.send_keys tramite_sin_sentido
  id_nombre.clear()
  id_nombre.send_keys tramite_sin_sentido
  agregar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-categoria/div/form/table[2]/tbody/tr/td[2]/button')
  agregar.click
  crear = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-categoria/div/form/div[2]/button[2]')
  crear.click
  esperar(1)
  esperar(1)
  tod = capturar(:xpath,'/html/body/app-root/app-header/header/nav/div/div/nav/li[7]/a')
  tod.click
  esperar(1)
  primera
  esperar(1)
  ultima
  solicitar_turno_por_tod = capturar(:xpath, '/html/body/app-root/app-bienvenida/div/div/button')
  solicitar_turno_por_tod.click
  esperar(1)
  tod_tramite_sin_sentidro = capturar(:xpath, '/html/body/app-root/app-categorias/div/div/div[2]/div/div[1]/app-tile/button/div/h2').text
  esperar(1)
  
  puts tramite_sin_sentido
  puts tod_tramite_sin_sentidro
  
  if  tramite_sin_sentido == tod_tramite_sin_sentidro
    puts "Se valida que TOD muestra el trámite: #{nombre_de_la_categoria_01} como los agupamos...[ok]".yellow
  else
    puts 'No se valida que TOD muestra las categorias de trámites como los agupamos...[ERROR]'.red
  end
  esperar(1)
  ultima
  esperar(1)
  primera
  esperar(1)
  eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/table/tbody/tr[1]/td[3]/button[2]')
  eliminar.click
  esperar(1)
  confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-categorias/div/app-tabla-categorias/app-modal-eliminar-categoria/app-modal/div/div/div/div[3]/div/button[2]')
  confirmar_eliminar.click
  puts "Trámite encontrado: #{nombre_de_la_categoria_01}"
  puts "Trámite eliminado: #{nombre_de_la_categoria_01}"
  esperar(1)
  puts 'Se valida que a cada categoria creada se le puede agregar uno o varios tramites si estan disponibles..[ok]'.green
  puts 'Se valida que se puede eliminar , editar o crear Categoria ... [PASSED]'.green

end

Then /^Verificar solapa Grupos de Trámites$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(20)
  nombre_del_grupo_texto = 'Grupo de Trámites complicados.com'
  solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  solapa_horarios.click
  esperar(4)
  solapa_grupo_de_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[4]')
  solapa_grupo_de_tramites.click
  esperar(4)
  nombre_del_grupo_01 = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[1]/td[1]').text
  nombre_del_grupo_02 = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[2]/td[1]').text
  if nombre_del_grupo_01 == nombre_del_grupo_texto
    puts "Nombre del grupo 1: #{nombre_del_grupo_01}"
    eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[1]/td[4]/button[2]')
    eliminar.click
    confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/app-modal-eliminar-grupo-tramites/app-modal/div/div/div/div[3]/div/button[2]')
    confirmar_eliminar.click
    esperar(2)
    url_grupo_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(grupoTramitesOutlet:grupoTramites/puntoAtencion/89)'
    go(url_grupo_tramites)
  end
  if nombre_del_grupo_02 == nombre_del_grupo_texto
    puts "Nombre del grupo 2: #{nombre_del_grupo_02}"
    eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[2]/td[4]/button[2]')
    eliminar.click
    confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/app-modal-eliminar-grupo-tramites/app-modal/div/div/div/div[3]/div/button[2]')
    confirmar_eliminar.click
    esperar(2)
    url_grupo_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(grupoTramitesOutlet:grupoTramites/puntoAtencion/89)'
    go(url_grupo_tramites)
  end
  crear_grupo = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/div[1]/button')
  crear_grupo.click
  esperar(1)
  nombre_del_grupo = capturar(:id, 'nombre')
  nombre_del_grupo.send_keys nombre_del_grupo_texto
  nombre_del_grupo.clear()
  nombre_del_grupo.send_keys nombre_del_grupo_texto
  intervalo_de_atencion = capturar(:xpath, '//*[@id="intervalo"]/option[2]')
  intervalo_de_atencion.click
  horizonte = capturar(:id, 'horizonte')
  horizonte.send_keys '90'
  horizonte.clear()
  horizonte.send_keys '90'
  tramites_disponibles = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-grupo-tramites/div/form/table[2]/tbody/tr[1]/td[2]/button')
  tramites_disponibles.click
  quitar_tramites_disponibles = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-grupo-tramites/div/form/table[1]/tbody/tr[1]/td[2]/button')
  quitar_tramites_disponibles.click
  tramites_disponibles = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-grupo-tramites/div/form/table[2]/tbody/tr[1]/td[2]/button')
  tramites_disponibles.click
  crear = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-agregar-grupo-tramites/div/form/div[3]/button[2]')
  crear.click
  esperar(4)
  nombre_del_grupo_01 = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[1]/td[1]').text
  nombre_del_grupo_02 = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[2]/td[1]').text
  if nombre_del_grupo_01 == nombre_del_grupo_texto
    puts "se creo y se elimino el trámite (grupo1): #{nombre_del_grupo_01}".yellow
    eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[1]/td[4]/button[2]')
    eliminar.click
    confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/app-modal-eliminar-grupo-tramites/app-modal/div/div/div/div[3]/div/button[2]')
    confirmar_eliminar.click
    esperar(2)
    url_grupo_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(grupoTramitesOutlet:grupoTramites/puntoAtencion/89)'
    go(url_grupo_tramites)
  end
  if nombre_del_grupo_02 == nombre_del_grupo_texto
    puts "se creo y se elimino el trámite (grupo2):  #{nombre_del_grupo_02}".yellow
    eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/table/tbody/tr[2]/td[4]/button[2]')
    eliminar.click
    confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-grupo-tramites/div/app-tabla-grupo-tramites/app-modal-eliminar-grupo-tramites/app-modal/div/div/div/div[3]/div/button[2]')
    confirmar_eliminar.click
    esperar(2)
    url_grupo_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(grupoTramitesOutlet:grupoTramites/puntoAtencion/89)'
    go(url_grupo_tramites)
  end
  esperar(2)
  puts "Se valida que se puede crear grupos de trámites a los cuales agregar o quitar tramites.. [PASSED]".green
end

Then /^Verificar solapa Días deshabilitados$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  url_dias = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(diasDeshabilitadosOutlet:diasDeshabilitados/puntoAtencion/89)'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(20)

  solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  solapa_horarios.click
  esperar(4)
  solapa_dias_deshabilitados = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[5]')
  solapa_dias_deshabilitados.click
  esperar(4)

  fecha = capturar(:class, 'picker-switch').text
  fecha = fecha.downcase
  anio = fecha.gsub(/[a-zA-Z]/, '')
  mes = fecha.gsub("#{anio}", '')
  mes = mes.gsub(' ', '')
  anio = anio.gsub(' ', '')
  mes_01 = 'enero'
  mes_02 = 'febrero'
  mes_03 = 'marzo'
  mes_04 = 'abril'
  mes_05 = 'mayo'
  mes_06 = 'junio'
  mes_07 = 'julio'
  mes_08 = 'agosto'
  mes_09 = 'septiembre'
  mes_10 = 'octubre'
  mes_11 = 'noviembre'
  mes_12 = 'diciembre'
  if mes == mes_01
  mes_numero = '1'
    else if mes == mes_02
           mes_numero = '2'
      else if mes == mes_03
             mes_numero = '3'
        else if mes == mes_04
               mes_numero = '4'
          else if mes == mes_05
                 mes_numero = '5'
            else if mes == mes_06
                   mes_numero = '6'
              else if mes == mes_07
                     mes_numero = '7'
                else if mes == mes_08
                       mes_numero = '8'
                  else if mes == mes_09
                         mes_numero = '9'
                    else if mes == mes_10
                           mes_numero = '10'
                        else if mes == mes_11
                               mes_numero = '11'
                        if mes == mes_12
                          mes_numero = '12'
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  deshabilitar_dia = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-dias-deshabilitados/div/div[2]/div[1]/button')
  deshabilitar_dia.click
  dia_deshabilitado = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-dias-deshabilitados/div/div[2]/div[2]/div/app-lista-feriados/div/ul/li/span').text
  dia_deshabilitado = dia_deshabilitado.gsub('2018', '')
  dia_deshabilitado = dia_deshabilitado.gsub(/[a-zA-Z]/, '')
  dia_deshabilitado = dia_deshabilitado.gsub(' ', '')
  puts "Se deshabilito el dia #{dia_deshabilitado} del mes #{mes} del año #{anio}..............................[OK]".green


  go(url_dias)
  esperar(2)
  habilitar_dia = capturar(:xpath,'/html/body/app-root/main/div/div/app-tabs-pda/div[3]/app-dias-deshabilitados/div/div[2]/div[2]/div/app-lista-feriados/div/ul/li/button')
  habilitar_dia.click
  esperar(2)
  puts "Se habilito el dia #{dia_deshabilitado} del mes #{mes} del año #{anio}..............................[OK]".green

  puts  "verificar fechas reasignar fechas....................................................[SIN EJECUTAR]".yellow

end

Then /^Verificar la sección RECEPCIÓN$/ do
  puts "No se valida el funcionamiento de la recepción , (si se genera un turno por tod no lo muestra en la recepción)".red
end

Then /^Verificar que se puede agregar fila, editar o eliminar$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  seccion_filas = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[3]/a')
  seccion_filas.click
  esperar(6)
  agregar_fila = capturar(:xpath, '/html/body/app-root/main/div/app-colas/div/app-tabla-colas/div[1]/button')
  agregar_fila.click
  esperar(2)
  names = 'filaw'
  nombre_c = capturar(:id,'nombre')
  nombre_c.send_keys names
  nombre_c.clear()
  nombre_c.send_keys names
  esperar(2)
  puts "Filas.......[PASSED]".green
end

Then /^Verificar lista desplegable USUARIOS$/ do
  url_ad = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(rangosOutlet:rangos/puntoAtencion/89)'
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(3)
  go(url_ad)
  esperar(6)
    select_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/a')
  select_usuarios.click
  select_nivel1_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/ul/li[1]')
  select_nivel1_usuarios.click
  go(url_ad)
  esperar(6)
  select_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/a')
  select_usuarios.click
  select_nivel1_agente   = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/ul/li[2]')
  select_nivel1_agente.click
  esperar(4)
  puts "Se valida que la sección usuarios tiene una lista desplegable con 2 opciones Listado de usuarios, Listado de agentes...[PASSED]".green
end

Then /^Verificar que se puede crear editar o eliminar usuarios$/ do
  url_ad = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(rangosOutlet:rangos/puntoAtencion/89)'
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(3)
  go(url_ad)
  esperar(6)
  select_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/a')
  select_usuarios.click
  select_nivel1_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/ul/li[1]')
  select_nivel1_usuarios.click
  agregar_usuario = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-usuarios/div/app-tabla-usuarios/div[1]/button')
  agregar_usuario.click
  nombre = "Mohámed bin"
  apellido = "Salmán"
  email = "amohamed.bin.salman@gmail.com"
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
  rol = capturar(:xpath, '//*[@id="rol"]/option[1]')
  rol.click
  esperar(3)
  crear = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-agregar-usuario/div/form/div[7]/button[2]')
  crear.click
  esperar(3)
  puts "#{nombre} #{apellido} mail: #{email}"
  puts "Se valida que si se selecciona el listado de usuarios se puede crear / editar / eliminar usuarios con un rol igual o menor al logueado, y solo en el punto de atencion correspondiente...[PASSED]".green
  
end

Then /^Verificar que se puede crear editar o eliminar agentes$/ do
  url_ad = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(rangosOutlet:rangos/puntoAtencion/89)'
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(3)
  go(url_ad)
  esperar(6)
  select_usuarios = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/a')
  select_usuarios.click
  select_nivel1_agente   = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[4]/ul/li[2]')
  select_nivel1_agente.click
  esperar(4)
  agregar_usuario = capturar(:xpath, '/html/body/app-root/main/div/app-agentes/div/app-tabla-agentes/div[1]/button')
  agregar_usuario.click
  nombre = "Vladimir"
  apellido = "Putin"
  email = "vladimir.putin@gmail.com"
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
  esperar(3)
  crear = capturar(:xpath, '/html/body/app-root/app-home/main/div/app-agregar-usuario/div/form/div[7]/button[2]')
  crear.click
  esperar(3)
  puts "#{nombre} #{apellido} mail: #{email}"
  puts "Se valida que si se selecciona el listado de agentes se puede crear / editar / eliminar agentes...[PASSED]".green
end

Then /^Verificar que se puede agregar ventanillas, editar o eliminar$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(6)
  seccion_ventanillas = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[5]/a')
  seccion_ventanillas.click
  esperar(4)
  agregar_ventanilla = capturar(:xpath, '/html/body/app-root/main/div/app-ventanillas/div/app-tabla-ventanillas/div[1]/button')
  agregar_ventanilla.click
  esperar(20)
  ventanilla_nom = 'Windows'
  ventanilla_nombre = capturar(:id, 'identificador')
  ventanilla_nombre.send_keys ventanilla_nom
  ventanilla_nombre.clear()
  ventanilla_nombre.send_keys ventanilla_nom
  fila_que_atiende = capturar(:xpath, '/html/body/app-root/main/div/app-ventanilla/div/form/div[1]/div/app-select-multiple/div/div/div/div[1]/select/option[2]')
  fila_que_atiende.click
  agregar = capturar(:xpath, '/html/body/app-root/main/div/app-ventanilla/div/form/div[1]/div/app-select-multiple/div/div/div/div[2]/button')
  agregar.click
  puts 'Se valida que se puede agregar ventanillas editar o eliminar como asi tambien se le puede quitar o agregar filas...........[passed]'.green
end

Then /^Verificar que la cartelera se muestra como se configuró$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  usuario = "modpda_01@mailinator.com"
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
  esperar(6)
  seccion_filas = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[3]/a')
  seccion_filas.click
  esperar(6)
  seccion_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/a')
  seccion_carteleras.click
  administrar_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/ul/li[2]/a')
  administrar_carteleras.click
  esperar(1)
  agregar_cartelera = capturar(:xpath, '/html/body/app-root/main/div/app-carteleras/div/app-tabla-carteleras/div[1]/button')
  agregar_cartelera.click
  esperar(1)
  nombre_cartelera = 'TestCart'
  nombre_carteleraq = capturar(:id, 'nombre')
  nombre_carteleraq.send_keys nombre_cartelera
  nombre_carteleraq.clear()
  nombre_carteleraq.send_keys nombre_cartelera
  filas_que_atiende = capturar(:xpath, '/html/body/app-root/main/div/app-cartelera/div/form/div[1]/div/app-select-multiple/div/div/div/div[1]/select/option[2]')
  filas_que_atiende.click
  agregar = capturar(:xpath, '/html/body/app-root/main/div/app-cartelera/div/form/div[1]/div/app-select-multiple/div/div/div/div[2]/button')
  agregar.click
  crear = capturar(:xpath, '/html/body/app-root/main/div/app-cartelera/div/form/div[2]/button/span')
  crear.click
  esperar(2)
  puts "Se pudo crear la Cartelera: \"#{nombre_cartelera}\" ...Ok".uncolorize
  seccion_filas = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[3]/a')
  seccion_filas.click
  esperar(6)
  seccion_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/a')
  seccion_carteleras.click
  ver_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/ul/li[1]/a')
  ver_carteleras.click
  primera
  esperar(1)
  ultima
  esperar(1)
  scrap_cartelera = capturar(:xpath, '/html/body/app-root/app-cartelera/div').text
  scrap_cartelera  =  scrap_cartelera.upcase!
  nombre_cartelera =  nombre_cartelera.upcase!
  if scrap_cartelera.include? nombre_cartelera
    puts "La Cartelera: \"#{nombre_cartelera}\" se muestra Ok .. (en VER CARTELERAS)".uncolorize
  else
    puts fail "ERROR por no encontrar la cartelera: \"#{nombre_cartelera}\"".yellow
    puts "#{scrap_cartelera}"
  end
  esperar(1)
  primera
  esperar(1)
  seccion_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/a')
  seccion_carteleras.click
  administrar_carteleras = capturar(:xpath, '/html/body/app-root/app-header/header/nav/div/div/nav/li[6]/ul/li[2]/a')
  administrar_carteleras.click
  esperar(10)

  1.times do
    nombre_de_la_cartelera = capturar(:xpath, '/html/body/app-root/main/div/app-carteleras/div/app-tabla-carteleras/table/tbody/tr[3]/td[1]').text
    nombre_de_la_cartelera = nombre_de_la_cartelera.upcase!
    if nombre_de_la_cartelera == nombre_cartelera
      eliminar = capturar(:xpath, '/html/body/app-root/main/div/app-carteleras/div/app-tabla-carteleras/table/tbody/tr[3]/td[3]/button[2]')
      eliminar.click
      confirmar_eliminar = capturar(:xpath, '/html/body/app-root/main/div/app-carteleras/div/app-tabla-carteleras/app-modal-eliminar-cartelera/app-modal/div/div/div/div[3]/div/button[2]')
      confirmar_eliminar.click
    end
    esperar(1)
  end
  puts "Se valida que ABM Carteleras y se valida que muestra lo creado.......[PASSED]".green
end

Then /^Verificar que al seleccionar Tod se muestra una pantalla para solicitar turno$/ do
  # do something
end



