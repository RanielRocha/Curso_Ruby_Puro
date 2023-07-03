print "Digite o primeiro número inteiro: "
num1 = gets.chomp.to_i
 
print "Digite o segundo número inteiro: "
num2 = gets.chomp.to_i
 
add = num1 + num2
subt = num1 - num2
mult = num1 * num2
div = num1 / num2

puts "\nO resultado das operações entre os dois números é: \nAdição: #{add}; \nSubtração: #{subt}; \nMultiplicação: #{mult}; \nDivisão: #{div}"

# array = [10, 5, 50, 2, 80, 4]
# soma = array[1] + array[3]
# mod = array[0]%array[5]

# puts "Somando os elementos de índice 1 (nº #{array[1]}) e 3 (nº #{array[3]}) do array, temos o resultado #{soma}."
# puts "O módulo entre a divisão dos elementos de índice 0 (nº #{array[0]}) e 5 (nº #{array[5]}) do array é #{mod}."