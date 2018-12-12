Then /^ciudadano crea un turno y lo cancela por mi argentina$/ do

end

Then /^ciudadano crea un turno y lo cancela por página$/ do
  pagina = "https://qa-turnos.argentina.gob.ar/turnos/seleccionTurno/519"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Buenos Aires")
  esperar(1)
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  select_click(localidad,"Avellaneda")
  esperar(2)
  capturar(:id ,'puntoAtencion_0').click
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
  #capturar(:id,'telefono').send_keys telefono
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

Then /^ciudadano crea un turno y lo cancela por mail$/ do


  sistema_nacional = 'Sistema Nacional de Turnos"QA"'
  mail_borrar(sistema_nacional)

  asa =  sacar_turno
  # puts asa[:cuil]
  # puts asa[:nombre]
  # puts asa[:apellido]
  # puts asa[:codigo_reserva]
  # puts asa[:fecha]
  # puts asa[:horario]
  # puts asa[:tramite]
  # puts asa[:pa]

  #google

  esperar(1)
  go("https://www.google.com/gmail/")
  esperar(3)
  1.times do
    mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[1]/td[6]/div/div/div/span/span')
    mail_02 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[2]/td[6]/div/div/div/span/span')
    mail_03 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[6]/div/div/div/span/span')
    mail_04 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[4]/td[6]/div/div/div/span/span')
    mail_05 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[5]/td[6]/div/div/div/span/span')
    mail_06 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[6]/td[6]/div/div/div/span/span')
    mail_07 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[7]/td[6]/div/div/div/span/span')
    mail_08 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[8]/td[6]/div/div/div/span/span')
    mail_09 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[9]/td[6]/div/div/div/span/span')

    sistema_nacional_de_turnos = 'Sistema Nacional de Turnos"QA"'

    if mail_01.text == sistema_nacional_de_turnos
      # puts "1: #{mail_01.text}"
      mail_01.click
      mail_lista_00 = capturar(:class, 'aCi')
      mail_lista_00.click
      esperar(2)
      nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
      cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
      codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
      cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
      cancelar_turno.click
      ultima
      esperar(6)
      url_actual = donde_estoy
      # puts url_actual
      # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
      # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
      if url_actual.include? 'resultadoBusqueda'
        # puts 'include resultadoBusqueda'
        r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
        r_cancelar_turno.click
        confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
        confirmar_r_cancelar_turno.click
        puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
        puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
      else
        puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
        puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
      end
      esperar(3)
      primera
    else if mail_02.text == sistema_nacional_de_turnos
        # puts "2: #{mail_02.text}"
        mail_02.click
        mail_lista_00 = capturar(:class, 'aCi')
        mail_lista_00.click
        esperar(2)
        nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
        cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
        codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
        cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
        cancelar_turno.click
        ultima
        esperar(6)
        url_actual = donde_estoy
        # puts url_actual
        # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
        # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
        if url_actual.include? 'resultadoBusqueda'
          # puts 'include resultadoBusqueda'
          r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
          r_cancelar_turno.click
          confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
          confirmar_r_cancelar_turno.click
          puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
          puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
        else
          puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
          puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
        end
        esperar(3)
        primera
      else if mail_03.text == sistema_nacional_de_turnos
          # puts "3: #{mail_03.text}"
          mail_03.click
          mail_lista_00 = capturar(:class, 'aCi')
          mail_lista_00.click
          esperar(2)
          nombre = capturar(:xpath, '/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div/div[2]/div[1]/div[2]/div[3]/div[3]/div/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
          cuil = capturar(:xpath, '/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div/div[2]/div[1]/div[2]/div[3]/div[3]/div/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
          codigo = capturar(:xpath, '/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div/div[2]/div[1]/div[2]/div[3]/div[3]/div/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
          cancelar_turno = capturar(:xpath, '//*[@id=":cs"]/div[1]/div[1]/div[1]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td')
          cancelar_turno.click
          ultima
          esperar(6)
          url_actual = donde_estoy
          # puts url_actual
          # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
          # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
          if url_actual.include? 'resultadoBusqueda'
            # puts 'include resultadoBusqueda'
            r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
            r_cancelar_turno.click
            confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
            confirmar_r_cancelar_turno.click
            puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
            puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
          else
            puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
            puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
          end
          esperar(3)
          primera
          esperar(18)
        else if mail_04.text == sistema_nacional_de_turnos
            # puts "4: #{mail_04.text}"
            mail_04.click
            mail_lista_00 = capturar(:class, 'aCi')
            mail_lista_00.click
            esperar(2)
            nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
            cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
            codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
            cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
            cancelar_turno.click
            ultima
            esperar(6)
            url_actual = donde_estoy
            # puts url_actual
            # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
            # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
            if url_actual.include? 'resultadoBusqueda'
              # puts 'include resultadoBusqueda'
              r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
              r_cancelar_turno.click
              confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
              confirmar_r_cancelar_turno.click
              puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
              puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
            else
              puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
              puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
            end
            esperar(3)
            primera
          else if mail_05.text == sistema_nacional_de_turnos
              # puts "5: #{mail_05.text}"
              mail_05.click
              mail_lista_00 = capturar(:class, 'aCi')
              mail_lista_00.click
              esperar(2)
              nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
              cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
              codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
              cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
              cancelar_turno.click
              ultima
              esperar(6)
              url_actual = donde_estoy
              # puts url_actual
              # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
              # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
              if url_actual.include? 'resultadoBusqueda'
                # puts 'include resultadoBusqueda'
                r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
                r_cancelar_turno.click
                confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
                confirmar_r_cancelar_turno.click
                puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
                puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
              else
                puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
                puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
              end
              esperar(3)
              primera
            else if mail_06.text == sistema_nacional_de_turnos
                # puts "6: #{mail_06.text}"
                mail_06.click
                mail_lista_00 = capturar(:class, 'aCi')
                mail_lista_00.click
                esperar(2)
                nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
                cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
                codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
                cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
                cancelar_turno.click
                ultima
                esperar(6)
                url_actual = donde_estoy
                # puts url_actual
                # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
                # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
                if url_actual.include? 'resultadoBusqueda'
                  # puts 'include resultadoBusqueda'
                  r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
                  r_cancelar_turno.click
                  confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
                  confirmar_r_cancelar_turno.click
                  puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
                  puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
                else
                  puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
                  puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
                end
                esperar(3)
                primera
              else if mail_07.text == sistema_nacional_de_turnos
                  # puts "7: #{mail_07.text}"
                  mail_07.click
                  mail_lista_00 = capturar(:class, 'aCi')
                  mail_lista_00.click
                  esperar(2)
                  nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
                  cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
                  codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
                  cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
                  cancelar_turno.click
                  ultima
                  esperar(6)
                  url_actual = donde_estoy
                  # puts url_actual
                  # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
                  # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
                  if url_actual.include? 'resultadoBusqueda'
                    # puts 'include resultadoBusqueda'
                    r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
                    r_cancelar_turno.click
                    confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
                    confirmar_r_cancelar_turno.click
                    puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
                    puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
                  else
                    puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
                    puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
                  end
                  esperar(3)
                  primera
                else if mail_08.text == sistema_nacional_de_turnos
                    # puts "8: #{mail_08.text}"
                    mail_08.click
                    mail_lista_00 = capturar(:class, 'aCi')
                    mail_lista_00.click
                    esperar(2)
                    nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
                    cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
                    codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
                    cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
                    cancelar_turno.click
                    ultima
                    esperar(6)
                    url_actual = donde_estoy
                    # puts url_actual
                    # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
                    # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
                    if url_actual.include? 'resultadoBusqueda'
                      # puts 'include resultadoBusqueda'
                      r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
                      r_cancelar_turno.click
                      confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
                      confirmar_r_cancelar_turno.click
                      puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
                      puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
                    else
                      puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
                      puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
                    end
                    esperar(3)
                    primera
                  else if mail_09.text == sistema_nacional_de_turnos
                      # puts "9: #{mail_09.text}"
                      mail_09.click
                      mail_lista_00 = capturar(:class, 'aCi')
                      mail_lista_00.click
                      esperar(2)
                      nombre         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[10]/td/p').text
                      cuil           = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[14]/td/p').text
                      codigo         = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[18]/td/p').text
                      cancelar_turno = capturar(:xpath, '//*[@id=":ck"]/div[1]/div/div[2]/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr[51]/td/table/tbody/tr/td/a')
                      cancelar_turno.click
                      ultima
                      esperar(6)
                      url_actual = donde_estoy
                      # puts url_actual
                      # url_que_deberia_estar    = 'https://qa-turnos.argentina.gob.ar/turnos/resultadoBusqueda/519'
                      # url_que_no_deberia_estar = 'https://qa-turnos.argentina.gob.ar/'
                      if url_actual.include? 'resultadoBusqueda'
                        # puts 'include resultadoBusqueda'
                        r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/section/div/div/div/button')
                        r_cancelar_turno.click
                        confirmar_r_cancelar_turno = capturar(:xpath, '/html/body/app-root/app-resultado-busqueda/div[2]/div/app-modal-cancelar-turno/app-modal/div/div/div/div[3]/div/button[2]')
                        confirmar_r_cancelar_turno.click
                        puts "TURNO ELIMINADO CUIL:#{cuil} NOMBRE:#{nombre}.................................[PASSED]".blue
                        puts "CODIGO DEL TURNO ELIMINADO #{codigo}.................................[PASSED]".blue
                      else
                        puts "EL TURNO YA FUE ELIMINADO ANTERIORMENTE  CUIL:#{cuil} NOMBRE:#{nombre}".yellow
                        puts "CODIGO DEL TURNO ELIMINADO ANTERIORMENTE #{codigo}".yellow
                      end
                      esperar(3)
                      primera
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
  puts "Se valida que se puede generar un turno, o cancelarlo desde el mail......[PASSED]".green
end