def extraer_fechas(texto)
  regex = /\b(0[1-9]|1[0-2])[-/](0[1-9]|1[0-2]|2[0-9]|3[01])[-/]\d{4}\b/
  fechas = texto.scan(regex)
  return fechas
end

puts "Ingrese las fechas que se desean verificar:"
cadena_de_texto = gets.chomp

fechas_encontradas = extraer_fechas(cadena_de_texto)
puts fechas_encontradas
  