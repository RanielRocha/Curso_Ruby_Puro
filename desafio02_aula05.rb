# Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido. 

require 'cpf_cnpj'

def verifica_cpf(num_cpf)
  cpf = CPF.new(num_cpf)
  if cpf.valid?
    puts "\nO CPF #{cpf.formatted} é válido."
    sleep 2.5
  else
    puts "\nO CPF #{cpf.formatted} não é válido."
    sleep 2.5
  end
end

loop do
  puts "\n--- Programa que Verifica número de CPF ---"
  puts "Selecione uma das seguintes opções:"
  puts '1- Acessar programa'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  if option == 1
    sleep 0.5
    print "\nDigite o número do CPF: "
    num_cpf = gets.chomp.to_i
    verifica_cpf(num_cpf)
  elsif option == 0
    puts "\nSaindo........"
    sleep 1
    break if option == 0
  else
    puts "\nOpção Inválida!!"
    sleep 1
  end
  system "clear"
end
