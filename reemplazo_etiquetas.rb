cadena_html = "<a href='https://www.youtube.com/'>Enlace de ejemplo</a>"

texto_sin_etiquetas = cadena_html.gsub(/<a\s[^>]*>(.*?)<\/a>/) do |match|
  $1
end

puts texto_sin_etiquetas
