### MISSÂO ESPECIAL AULA 04
## Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência. 

array_nums = []
i = 1
while i <= 3
   print "Digite o #{i}º número: "
   num = gets.chomp.to_i
   array_nums.push(num)
   i += 1
end

new_array_nums = array_nums.map do |x|
   x ** 2
end

puts "\nArray Original:"
print array_nums

puts "\n\nArray elevado a Potência 2:"
print new_array_nums
puts ''