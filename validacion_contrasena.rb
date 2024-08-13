def contraseña_segura?(contrasena)
  regex = /^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$/
  contrasena =~ regex
end

puts "Ingrese la contraseña a verificar:"
contrasena = gets.chomp

if contraseña_segura?(contrasena)
  puts "La contraseña es segura y cumple con los siguientes requisitos:\n* Al menos 8 caracteres\n* Al menos una mayúscula\n* Al menos una minúscula\n* Al menos un número\n* Al menos un carácter especial (@$!%?&)"
else
  puts "La contraseña no es segura. Debe cumplir con los siguientes requisitos:\n* Al menos 8 caracteres\n* Al menos una mayúscula\n* Al menos una minúscula\n* Al menos un número\n* Al menos un carácter especial (@$!%?&)"
end
