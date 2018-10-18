cucumber_features = [
    {:fichero => "reporte.html" ,                       :tag => "reporte" ,                       :formato => "html",  :plataforma => "qa"},
    {:fichero => "reporte.json" ,                       :tag => "reporte" ,                       :formato => "json",  :plataforma => "qa"},
    {:fichero => "compartir.html" ,                     :tag => "compartir" ,                     :formato => "html",  :plataforma => "argentina"},
    {:fichero => "compartir.json" ,                     :tag => "compartir" ,                     :formato => "json",  :plataforma => "argentina"},
    {:fichero => "formularios.html" ,                   :tag => "formularios" ,                   :formato => "html",  :plataforma => "argentina"},
    {:fichero => "formularios.json" ,                   :tag => "formularios" ,                   :formato => "json",  :plataforma => "argentina"},
    {:fichero => "home.html" ,                          :tag => "home" ,                          :formato => "html",  :plataforma => "argentina"},
    {:fichero => "home.json" ,                          :tag => "home" ,                          :formato => "json",  :plataforma => "argentina"},
    {:fichero => "listado_ordenado.html" ,              :tag => "listado_ordenado" ,              :formato => "html",  :plataforma => "argentina"},
    {:fichero => "listado_ordenado.json" ,              :tag => "listado_ordenado" ,              :formato => "json",  :plataforma => "argentina"},
    {:fichero => "login_redes_sociales.html" ,          :tag => "login_redes_sociales" ,          :formato => "html",  :plataforma => "argentina"},
    {:fichero => "login_redes_sociales.json" ,          :tag => "login_redes_sociales" ,          :formato => "json",  :plataforma => "argentina"},
    {:fichero => "mas_visitados.html" ,                 :tag => "mas_visitados" ,                 :formato => "html",  :plataforma => "argentina"},
    {:fichero => "mas_visitados.json" ,                 :tag => "mas_visitados",                  :formato => "json",  :plataforma => "argentina"},
    {:fichero => "organismos.html" ,                    :tag => "organismos" ,                    :formato => "html",  :plataforma => "argentina"},
    {:fichero => "organismos.json" ,                    :tag => "organismos" ,                    :formato => "json",  :plataforma => "argentina"},
    {:fichero => "sube.html" ,                          :tag => "sube" ,                          :formato => "html",  :plataforma => "argentina"},
    {:fichero => "sube.json" ,                          :tag => "sube" ,                          :formato => "json",  :plataforma => "argentina"},
    {:fichero => "test.html" ,                          :tag => "test" ,                          :formato => "html",  :plataforma => "qa"},
    {:fichero => "test.json" ,                          :tag => "test" ,                          :formato => "json",  :plataforma => "qa"},
    {:fichero => "turnos.html" ,                        :tag => "turnos" ,                        :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos.json" ,                        :tag => "turnos" ,                        :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_recepcionar.html" ,            :tag => "turnos_recepcionar" ,            :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_recepcionar.json" ,            :tag => "turnos_recepcionar" ,            :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_sacar.html" ,                  :tag => "turnos_sacar" ,                  :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_sacar.json" ,                  :tag => "turnos_sacar" ,                  :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_sacar_multiples.html" ,        :tag => "turnos_sacar_multiples" ,        :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_sacar_multiples.json" ,        :tag => "turnos_sacar_multiples" ,        :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_sacar_multiples_tod.html" ,    :tag => "turnos_sacar_multiples_tod" ,    :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_sacar_multiples_tod.json" ,    :tag => "turnos_sacar_multiples_tod",     :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_status.html" ,                 :tag => "turnos_status" ,                 :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_status.json" ,                 :tag => "turnos_status",                  :formato => "json",  :plataforma => "snt"},
    {:fichero => "turnos_prod.html" ,                   :tag => "turnos_prod" ,                   :formato => "html",  :plataforma => "snt"},
    {:fichero => "turnos_prod.json" ,                   :tag => "turnos_prod",                    :formato => "json",  :plataforma => "snt"},
]


Before do
  # @cukehub_api_key = "c1ty7uj72StwdqLGWKQZRjd8"
  # @domain = "http://cukehub.com"
  # puts @browser.capabilities.browser_name + " " + @browser.capabilities.version
end

at_exit do

  pruebas_ejecuciones = '          <h3>Ejecuciones de pruebas</h3>
          <table class="table table-hover table-striped table-bordered dataTable" id="tablaEjecucionPruebas">
            <thead>
            <tr>
              <th>Fecha</th>
              <th>Caso de prueba</th>
              <th>Resultado</th>
            </tr>
            </thead>
            <tbody>'
  pruebas_anteriores = '          <h3>Pruebas anteriores</h3>
          <table class="table table-hover table-striped table-bordered  dataTable">
            <thead>
            <tr>
              <th>Fecha</th>
              <th>Caso de prueba</th>
              <th>Resultado</th>
            </tr>
            </thead>
            <tbody>'

  cucumber_features.each do |caso|
    fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
    fichero = caso[:fichero]
    tag = caso[:tag]
    formato = caso[:formato]
    plataforma = caso[:plataforma]
    if File.exist? "#{path_root_proyecto}/GobiernoDigital/test/report/constructor_de_reportes/#{fichero}"
      if formato == "html"
        html_content = IO.read("#{path_root_proyecto}/GobiernoDigital/test/report/constructor_de_reportes/#{fichero}")
        html_content.gsub!("<h1>Cucumber Features</h1>","<h1><span>Caso de Prueba:</span> (#{tag}) <br>Realizado el día: #{fecha} a las: #{hora}</br></h1>")
        nombre_del_archivo = "#{plataforma}_#{tag}.#{formato}"
        nombre_del_archivo_fecha = "#{plataforma}_#{tag}#{fecha}-#{hora}.#{formato}"
        path_pages = "#{path_root_proyecto}/GobiernoDigital/app/views/pages/#{nombre_del_archivo}"
        path_pages_fecha = "#{path_root_proyecto}/GobiernoDigital/app/views/pages/pages/#{nombre_del_archivo_fecha}"
        IO.write("#{path_pages}",html_content)
        IO.write("#{path_pages_fecha}",html_content)

        if html_content.include? 'step failed'

          #estado_texto = "  ლ(ಠ益ಠლ) ERROR"
          estado_label = '<label class="label label-danger"> Con errores</label>'
        else
          #estado_texto = " \\(• ◡ •)/ Sin Errores"
          estado_label = '<label class="label label-success"> Sin errores</label>'
        end
        tabla_ejemplo = '              <tr>
              <td><small>.*<\/small><\/td>
              <td><%= link_to "argentina_sube", page_path\("argentina_sube\.html"\) %><\/td>
              <td><label class=".*"> .*<\/label><\/td>
              <\/tr>'

        tabla_ejemplo = tabla_ejemplo.gsub('argentina_sube',"#{plataforma}_#{tag}")

        html_index_path = "#{path_root_proyecto}/GobiernoDigital/app/views/welcome/index.html.erb"
        html_index = IO.read("#{html_index_path}")
        html_index = html_index.gsub(/#{tabla_ejemplo}/, "")
        IO.write("#{html_index_path}",html_index)

        remplazo_pruebas = " #{pruebas_ejecuciones}
              <tr>
              <td><small>#{fecha}-#{hora}</small></td>
              <td><%= link_to \"#{plataforma}_#{tag}\", page_path(\"#{nombre_del_archivo}\") %></td>
              <td>#{estado_label}</td>
              </tr>"
        remplazo_pruebas_anteriores = " #{pruebas_anteriores}
                    <tr>
                    <td><small>#{fecha}-#{hora}</small></td>
                    <td><%= link_to \"#{nombre_del_archivo}\", page_path(\"#{nombre_del_archivo}\") %></td>
                    <td>#{estado_label}</td>
                    </tr>"

        html_index = IO.read("#{html_index_path}")
        html_index = html_index.gsub!("#{pruebas_ejecuciones}","#{remplazo_pruebas}")
        IO.write("#{html_index_path}",html_index)



        html_index = IO.read("#{html_index_path}")
        html_index = html_index.gsub!("#{pruebas_anteriores}","#{remplazo_pruebas_anteriores}")
        IO.write("#{html_index_path}",html_index)



        # html_index.gsub!("#{pruebas_anteriores}","#{remplazo_pruebas_anteriores}")
        # html_index_nuevo = "#{path_root_proyecto}/GobiernoDigital/app/views/welcome/index.html.erb"
        # IO.write("#{html_index_nuevo}",html_index)

        File.delete("#{path_root_proyecto}/GobiernoDigital/test/report/constructor_de_reportes/#{fichero}")
      else
        nombre_del_archivo = "#{plataforma}_#{tag}_#{fecha}_#{hora}.#{formato}"
        File.rename "#{path_root_proyecto}/GobiernoDigital/test/report/constructor_de_reportes/#{fichero}", "#{path_root_proyecto}/GobiernoDigital/test/report/json_reportes/#{nombre_del_archivo}"
      end
    end
  end
end
