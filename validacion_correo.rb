class EmailValidator
  def self.valid?(email)
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    email =~ email_regex
  end
end

puts "Por favor, ingresa tu correo electrónico:"
email = gets.chomp

if EmailValidator.valid?(email)
  puts "TU Correo electrónico es válido."
else
  puts "Lamentablemente, no se reconoce como un correo electrónico válido."
end
