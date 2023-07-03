# Crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula. Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado capitalize_name.

# Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.    

first_maiuscula = lambda {puts "O nome atualizado é: #{@name.capitalize}"}

def capitalize_name(first_maiuscula)
  i = 1
  while i <= 2
    print "Digite o #{i}º nome: "
    @name = gets.chomp
    i += 1
    first_maiuscula.call
    puts ''
  end 
end

capitalize_name(first_maiuscula)
