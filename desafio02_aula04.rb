# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

elementos = {}
i = 1
puts 'No Hash abaixo insira:'
puts 'Chave: a sigla do estado (Ex.: SP)'
puts 'Valor: o nome do estado (Ex.: São Paulo)'
puts ''

while i <= 3
   print "Digite a #{i}ª CHAVE do Hash: "
   key = gets.chomp
   print "Digite o #{i}º VALOR do Hash: "
   value = gets.chomp
   elementos[key] = value
   puts ''
   
   i += 1
end

elementos.each do |key, value|
   puts "O estado com a Sigla (Chave)--> #{key} é do estado com nome (Valor): #{value}"
end
