def scraping_turnos(texto)
  namedo = texto
  url_t = 'https://qa-turnos.argentina.gob.ar/turnos'
  go(url_t)

  # next_page = capturar(:xpath,'/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/div[1]/app-pagination/ul/li[6]/a')
  # next_page.click
  esperar(2)

  panel_01 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[1]/button/div/h2').text
  panel_02 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[2]/button/div/h2').text
  panel_03 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[3]/button/div/h2').text
  panel_04 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[4]/button/div/h2').text
  panel_05 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[5]/button/div/h2').text
  panel_06 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[6]/button/div/h2').text
  panel_07 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[7]/button/div/h2').text
  panel_08 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[8]/button/div/h2').text
  panel_09 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[9]/button/div/h2').text
  panel_10 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[10]/button/div/h2').text
  panel_11 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[11]/button/div/h2').text
  panel_12 = capturar(:xpath, '/html/body/app-root/app-wizard-busqueda-tramite/app-tramites-list/div/ul/div/div[12]/button/div/h2').text

  if namedo.eql? panel_01
    se_encontro_el_tramite = true
  else
    if namedo.eql? panel_02
      se_encontro_el_tramite = true
    else
      if namedo.eql? panel_03
        se_encontro_el_tramite = true
      else
        if namedo.eql? panel_04
          se_encontro_el_tramite = true
        else
          if namedo.eql? panel_05
            se_encontro_el_tramite = true
          else
            if namedo.eql? panel_06
              se_encontro_el_tramite = true
            else
              if namedo.eql? panel_07
                se_encontro_el_tramite = true
              else
                if namedo.eql? panel_08
                  se_encontro_el_tramite = true
                else
                  if namedo.eql? panel_09
                    se_encontro_el_tramite = true
                  else
                    if namedo.eql? panel_10
                      se_encontro_el_tramite = true
                    else
                      if namedo.eql? panel_11
                        se_encontro_el_tramite = true
                      else
                        if namedo.eql? panel_12
                          se_encontro_el_tramite = true
                        else
                          se_encontro_el_tramite = false
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
  return se_encontro_el_tramite
end


def solapa_tramites_capurar
  url_solapa_tramites = 'https://qa-back-turnos.argentina.gob.ar/organismos/44/areas/64/puntosAtencion/89/tabs/(tramitesOutlet:tramites/puntoAtencion/89)'
  go(url_solapa_tramites)
  esperar(4)
end

def refresh
  url = @browser.current_url
  go(url)
  esperar(1)
  #@browser.navigate.refresh
end


def cierrate_sesamo
  @browser.close
end




def sacar_turno
  pagina = "https://qa-turnos.argentina.gob.ar/turnos/seleccionTurno/519"
  go(pagina)
  provincia = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[1]/select')
  select_click(provincia,"Buenos Aires")
  localidad = capturar(:xpath,'/html/body/app-root/app-seleccion-turno/div[2]/div/section/div/div/form/div[2]/div/div[2]/select')
  esperar(1)
  select_click(localidad,"Avellaneda")
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
  cuil = cuil_aleat
  nombre = nombre_aleat
  apellido = apellido_aleat
  email = "automatic.test.bot@gmail.com"
  telefono = "1256987888"
  capturar(:id,'cuil').send_keys cuil
  capturar(:id,'nombre').send_keys nombre
  capturar(:id,'apellido').send_keys apellido
  capturar(:id,'email').send_keys email
  #capturar(:id,'telefono').send_keys telefono
  esperar(3)
  capturar(:xpath,'/html/body/app-root/app-datos-tramite/div[2]/div/section/div/div/form/div[2]/div/button').click
  esperar(6)
  codigo_reserva = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[1]/p').text
  fecha = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[2]/p').text
  horario = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[3]/p').text
  tramite = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[4]/p').text
  punto_atencion1 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[1]').text
  punto_atencion2 = capturar(:xpath,'/html/body/app-root/app-confirmacion-turno/div[2]/div/section/div/div/app-datos-turno/div[1]/div/ul/li/div[5]/p[2]').text

  puts "RESERVA DE TURNO .................................[PASSED]".blue
  puts "Trámite: #{tramite}".light_blue
  puts "Fecha: #{fecha} Horario: #{horario}".light_blue
  puts "#{nombre} #{apellido} CUIL: #{cuil}".light_blue
  puts "Código de reserva: #{codigo_reserva}".light_blue
  puts "Punto de atención: #{punto_atencion1} , #{punto_atencion2}".light_blue
  puts "RESERVA DE TURNO .................................[PASSED]".blue

  {:nombre => "#{nombre}", :cuil => "#{cuil}", :apellido => "#{apellido}", :email => "#{email}", :codigo_reserva => "#{codigo_reserva}", :fecha => "#{fecha}", :horario => "#{horario}", :tramite => "#{tramite}", :pa => "#{punto_atencion1} , #{punto_atencion2}"}
end



def mail_borrar(sistema_nacional_de_turnos)
  #eliminar turno del mail
  google
  esperar(1)
  10.times do
    go("https://www.google.com/gmail/")
    esperar(1)

    mail_01 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[1]/td[6]/div/div/div/span/span')
    mail_02 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[2]/td[6]/div/div/div/span/span')
    mail_03 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[3]/td[6]/div/div/div/span/span')
    mail_04 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[4]/td[6]/div/div/div/span/span')
    mail_05 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[5]/td[6]/div/div/div/span/span')
    mail_06 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[6]/td[6]/div/div/div/span/span')
    mail_07 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[7]/td[6]/div/div/div/span/span')
    mail_08 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[8]/td[6]/div/div/div/span/span')
    mail_09 = capturar(:xpath,'/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[6]/div/div[1]/div[2]/div/table/tbody/tr[9]/td[6]/div/div/div/span/span')


    if mail_01.text == sistema_nacional_de_turnos
      #puts "1#{mail_01.text}"
      mail_01.click
      mail_lista_00 = capturar(:class, 'aCi')
      mail_lista_00.click
      esperar(4)
      # puts "  aci  "
      tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
      tachito.click
      esperar(4)
    else if mail_02.text == sistema_nacional_de_turnos
           #puts "2#{mail_02.text}"
           mail_02.click
           mail_lista_00 = capturar(:class, 'aCi')
           mail_lista_00.click
           esperar(4)
           # puts "  aci  "
           tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
           tachito.click
           esperar(4)
         else if mail_03.text == sistema_nacional_de_turnos
                #puts "3#{mail_03.text}"
                mail_03.click
                mail_lista_00 = capturar(:class, 'aCi')
                mail_lista_00.click
                esperar(4)
                # puts "  aci  "
                tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                tachito.click
                esperar(4)
              else if mail_04.text == sistema_nacional_de_turnos
                     #puts "4#{mail_04.text}"
                     mail_04.click
                     mail_lista_00 = capturar(:class, 'aCi')
                     mail_lista_00.click
                     esperar(4)
                     # puts "  aci  "
                     tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                     tachito.click
                     esperar(4)
                   else if mail_05.text == sistema_nacional_de_turnos
                          #puts "5#{mail_05.text}"
                          mail_05.click
                          mail_lista_00 = capturar(:class, 'aCi')
                          mail_lista_00.click
                          esperar(4)
                          # puts "  aci  "
                          tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                          tachito.click
                          esperar(4)
                        else if mail_06.text == sistema_nacional_de_turnos
                               #puts "6#{mail_06.text}"
                               mail_06.click
                               mail_lista_00 = capturar(:class, 'aCi')
                               mail_lista_00.click
                               esperar(4)
                               # puts "  aci  "
                               tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                               tachito.click
                               esperar(4)
                             else if mail_07.text == sistema_nacional_de_turnos
                                    #puts "7#{mail_07.text}"
                                    mail_07.click
                                    mail_lista_00 = capturar(:class, 'aCi')
                                    mail_lista_00.click
                                    esperar(4)
                                    # puts "  aci  "
                                    tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                                    tachito.click
                                    esperar(4)
                                  else if mail_08.text == sistema_nacional_de_turnos
                                         #puts "8#{mail_08.text}"
                                         mail_08.click
                                         mail_lista_00 = capturar(:class, 'aCi')
                                         mail_lista_00.click
                                         esperar(4)
                                         # puts "  aci  "
                                         tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                                         tachito.click
                                         esperar(4)
                                       else if mail_09.text == sistema_nacional_de_turnos
                                              #puts "9#{mail_09.text}"
                                              mail_09.click
                                              mail_lista_00 = capturar(:class, 'aCi')
                                              mail_lista_00.click
                                              esperar(4)
                                              # # puts "  aci  "
                                              tachito = capturar(:xpath, '//*[@id=":5"]/div[2]/div[1]/div/div[2]/div[3]')
                                              tachito.click
                                              esperar(4)
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
  puts "TURNOS BORRADOS automatic.test.bot@gmail.com : (#{sistema_nacional_de_turnos}) .................................[PASSED]".blue
end