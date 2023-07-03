# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante. 

hash_nums = {a: 10, b: 30, c: 20, d: 25, e: 15, f: 59, g: 58}

maior = 0
maior_value = []
key_maior = []

hash_nums.each do |key, value|
   if value > maior
      maior = value
      maior_value = value
      key_maior = key
   end 
end

puts "O Hash Numérico utilizado é: #{hash_nums}"
puts "\nEntre os números (valores), o maior é o: #{maior_value}, de chave #{key_maior}"