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
  cierrate_sesamo
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
        line
        puts "Se valida la visibilidad del Punto de Atención en la pagina: https://qa-turnos.argentina.gob.ar/turnos".green
        puts "TRÁMITE(#{namedo}) ENCONTRADO(#{se_encontro_el_tramite}).....[PASSED]".green
        line
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
  cierrate_sesamo
end





Then /^Verificar solapa Categorías \(ToD\)$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  # usuario = "modpda_01@mailinator.com"
  # password = "QAsnt2018"
  # asd = capturar(:id,'usuario')
  # esperar(1)
  # asd.send_keys usuario
  # asd.clear()
  # asd.send_keys usuario
  # cap = capturar(:id,'password')
  # cap.send_keys password
  # esperar(1)
  # cap.clear()
  # cap.send_keys password
  # bot = capturar(:class,'btn-success')
  # bot.click
  # esperar(20)
  #
  # solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  # solapa_horarios.click
  # esperar(4)
  # solapa_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[2]')
  # solapa_tramites.click
  # esperar(4)
  # solapa_categorias_tod = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[3]')
  # solapa_categorias_tod.click
  # esperar(4)
  # solapa_grupo_de_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[4]')
  # solapa_grupo_de_tramites.click
  # esperar(4)
  # solapa_dias_deshabilitados = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[5]')
  # solapa_dias_deshabilitados.click
  # esperar(4)
  # solapa_categorias_tod = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[3]')
  # solapa_categorias_tod.click
  # esperar(4)


  cierrate_sesamo
end

Then /^Verificar solapa Grupos de Trámites$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  # usuario = "modpda_01@mailinator.com"
  # password = "QAsnt2018"
  # asd = capturar(:id,'usuario')
  # esperar(1)
  # asd.send_keys usuario
  # asd.clear()
  # asd.send_keys usuario
  # cap = capturar(:id,'password')
  # cap.send_keys password
  # esperar(1)
  # cap.clear()
  # cap.send_keys password
  # bot = capturar(:class,'btn-success')
  # bot.click
  # esperar(20)
  #
  # solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  # solapa_horarios.click
  # esperar(4)
  # solapa_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[2]')
  # solapa_tramites.click
  # esperar(4)
  # solapa_categorias_tod = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[3]')
  # solapa_categorias_tod.click
  # esperar(4)
  # solapa_grupo_de_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[4]')
  # solapa_grupo_de_tramites.click
  # esperar(4)
  # solapa_dias_deshabilitados = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[5]')
  # solapa_dias_deshabilitados.click
  # esperar(4)
  # solapa_grupo_de_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[4]')
  # solapa_grupo_de_tramites.click
  # esperar(4)


  cierrate_sesamo
end

Then /^Verificar solapa Días deshabilitados$/ do
  pagina = 'https://qa-usuarios-turnos.argentina.gob.ar'
  go(pagina)
  # usuario = "modpda_01@mailinator.com"
  # password = "QAsnt2018"
  # asd = capturar(:id,'usuario')
  # esperar(1)
  # asd.send_keys usuario
  # asd.clear()
  # asd.send_keys usuario
  # cap = capturar(:id,'password')
  # cap.send_keys password
  # esperar(1)
  # cap.clear()
  # cap.send_keys password
  # bot = capturar(:class,'btn-success')
  # bot.click
  # esperar(20)
  #
  #
  # solapa_dias_deshabilitados = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[5]')
  # solapa_dias_deshabilitados.click
  # esperar(4)
  # solapa_horarios = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[1]')
  # solapa_horarios.click
  # esperar(4)
  # solapa_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[2]')
  # solapa_tramites.click
  # esperar(4)
  # solapa_categorias_tod = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[3]')
  # solapa_categorias_tod.click
  # esperar(4)
  # solapa_grupo_de_tramites = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[4]')
  # solapa_grupo_de_tramites.click
  # esperar(4)
  # solapa_dias_deshabilitados = capturar(:xpath, '/html/body/app-root/main/div/div/app-tabs-pda/ul/li[5]')
  # solapa_dias_deshabilitados.click
  # esperar(4)

  cierrate_sesamo
end


###########################################################################################################
#             HASTA ACA ES LA SOLAPA ADMINISTRACIÓN                                                       #
###########################################################################################################




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

