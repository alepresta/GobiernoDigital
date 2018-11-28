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



















