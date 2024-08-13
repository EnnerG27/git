def validar_numero_telefono(numero)
  # Expresión regular para números de teléfono locales e internacionales
  regex = /\b(?:\+\d{1,3}\s*)?(?:\(\d{3}\)|\d{3})[- .]?\d{3}[- .]?\d{4}\b/

  # Verifica si el número coincide con la expresión regular
  if numero =~ regex
    return true
  else
    return false
  end
end

puts "Ingrese el número de teléfono:"
numero = gets.chomp

if validar_numero_telefono(numero)
  puts "El número de teléfono #{numero} es válido."
else
  puts "El número de teléfono #{numero} no es válido."
end
