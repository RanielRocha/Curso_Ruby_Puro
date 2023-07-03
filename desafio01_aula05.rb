# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def menu(option)
  if option == 1
    sleep 0.5
    print "\nDigite o número base: "
    num = gets.chomp.to_i
    print "Digite o expoente: "
    exp = gets.chomp.to_i
    potencia(num, exp)
  elsif option == 0
    puts "\nSaindo........"
    sleep 1
    exit
  else
    puts "\nOpção Inválida!!"
    sleep 1 
  end
  system "clear"
end

def potencia(num, exp)
  result = num ** exp
  puts "\nO resultado de #{num} elevado a #{exp} é: #{result}."
  sleep 2
end

loop do
  puts "\n--- Programa que calcula potênciação ---"
  puts "Selecione uma das seguintes opções:"
  puts '1- Acessar programa'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  menu(option) 
end
