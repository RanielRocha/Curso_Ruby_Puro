### MISSÂO ESPECIAL AULA 07
## Neste projeto você simulará o ato de escolher e comprar um produto em um mercado.
   
## No arquivo app.rb crie uma instância da classe Produto e adicione valores aos atributos nome e preco. Depois, inicie uma instância da classe Mercado passando um objeto produto como atributo e para finalizar execute o método comprar.

require_relative 'produto'
require_relative 'mercado'

def menu(option)
  if option == 1
    sleep 1
    system 'clear'
    puts "\n------- MERCADO DOS AMIGOS -------"
    puts "Selecione os produtos que deseja comprar!!"
    puts '1- Arroz      ---> R$25,90'
    puts '2- Feijão     ---> R$16,80'
    puts '3- Batata     ---> R$5,99'
    puts '4- Cebola     ---> R$4,75'
    puts '5- Óleo       ---> R$8,90'
    # puts '10- Finalizar Compras!'
    puts '0- Sair'
    print 'Opção: '
    option = gets.chomp.to_i
    submenu(option)
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

def compras(produto, preco)
  puts ''
  mercado = Mercado.new(produto, preco)
  mercado.comprar
  sleep 4
end

def submenu(option)
  produto = Produto.new()
  if option == 1
    produto = 'Arroz'
    preco = 25.90

    compras(produto, preco)
  elsif option == 2
    produto = 'Feijão'
    preco = 16.80

    compras(produto, preco)
  elsif option == 3
    produto = 'Batata'
    preco = 5.99

    compras(produto, preco)
  elsif option == 4
    produto = 'Cebola'
    preco = 4.75
    
    compras(produto, preco)
  elsif option == 5
    produto = 'Óleo'
    preco = 8.90

    compras(produto, preco)
  # elsif option == 10
  #   puts ''
  #   mercado = Mercado.new(produto.nome, produto.preco)
  #   mercado.comprar
  #   sleep 4
  elsif option == 0
      puts "\nSaindo........"
      sleep 1
      exit
  else
      puts "\nOpção Inválida!!"
      sleep 1
  end
  
  # puts '\nContinuar Comprando?'
  # puts '1- Sim'
  # puts '2- Não'
  # print 'Opção: '
  # continuar = gets.chomp.to_i
  # if continuar == 1
  #   submenu()
  # end
end

loop do
  puts "\n------- MERCADO DOS AMIGOS -------"
  puts "\nSelecione uma das seguintes opções:"
  puts '1- Comprar Produtos'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  menu(option)
end