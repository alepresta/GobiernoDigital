
Then /^verificar https turnos-api argentina.gob.ar$/ do
  pagina ="https://turnos-api.argentina.gob.ar/"
  go(pagina)
  status_link(200,pagina)
end

Then /^https filas-api.argentina.gob.ar$/ do
  pagina ="https://filas-api.argentina.gob.ar/"
  go(pagina)
  status_link(200,pagina)
end

Then /^https filas.argentina.gob.ar$/ do
  pagina ="https://filas.argentina.gob.ar"
  go(pagina)
  status_link(200,pagina)
end

Then /^https usuarios-turnos.argentina.gob.ar$/ do
  pagina ="https://usuarios-turnos.argentina.gob.ar/"
  go(pagina)
  status_link(200,pagina)
end

Then /^http carteleras-filas.argentina.gob.ar$/ do
  pagina ="http://carteleras-filas.argentina.gob.ar"
  go(pagina)
  status_link(200,pagina)
end

Then /^https usuarios-turnos-api.argentina.gob.ar$/ do
  pagina ="https://usuarios-turnos-api.argentina.gob.ar"
  go(pagina)
  status_link(200,pagina)
end



