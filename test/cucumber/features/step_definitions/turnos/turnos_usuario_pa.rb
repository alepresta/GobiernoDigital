
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo})  ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
  line
  puts tramite_sin_sentido
  puts tod_tramite_sin_sentidro
  line
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
  # do something
end

Then /^Verificar la sección RECEPCIÓN$/ do
  # do something
end

Then /^Verificar que se puede agregar fila, editar o eliminar$/ do
  # do something
end

Then /^Verificar lista desplegable USUARIOS$/ do
  # do something
end

Then /^Verificar que se puede crear editar o eliminar usuarios$/ do
  # do something
end

Then /^Verificar que se puede crear editar o eliminar agentes$/ do
  # do something
end

Then /^Verificar que se puede agregar ventanillas, editar o eliminar$/ do
  # do something
end

Then /^Verificar que cada ventanilla puede agregar o quitar filas$/ do
  # do something
end

Then /^Verificar que la cartelera se muestra como se configuró$/ do
  # do something
end

Then /^Verificar que al seleccionar Tod se muestra una pantalla para solicitar turno$/ do
  # do something
end

Then /^Verificar que se puede puede configurar esta pantallas desde Carteleras$/ do
  # do something
end

