
require 'cpf_cnpj'

module Person
  class Juridic
    def initialize(nameJud, cnpj)
      @nameJud = nameJud
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica Adicionada!'
      puts "Nome: #{@nameJud}"
      puts "CNPJ: #{@cnpj}"
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      verifica_cpf(cpf)
      puts "\nPessoa Física Adicionada!"
      puts "Nome: #{@name}"
      puts "CPF: #{@cpf_format}"
      # verifica_cpf(cpf)
    end
  end
end

class Verifica_cpf_cnpj
  def verifica_cpf(cpf)
    cpf = CPF.new(cpf)
    if cpf.valid?
      @cpf_format = cpf.formatted
      # puts "\nO CPF #{@cpf_format} é válido."
      sleep 2.5
    else
      puts "\nO CPF informado não é válido."
      sleep 2.5
    end
  end
  
  def verifica_cnpj(cnpj)
    cnpj = CNPJ.new(cnpj)
    if cnpj.valid?
      cnpj = cnpj.formatted
      sleep 2.5
    else
      puts "\nO CNPJ informado não é válido."
      sleep 2.5
    end
  end
end

def menu(option)
  if option == 1
    sleep 0.5
    system "clear"
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "Selecione uma das seguintes opções:"
    puts '1- Cadastrar Pessoa Física (PF)'
    puts '2- Consultar CPF'
    puts '3- Cadastrar Pessoa Jurídica (PJ)'
    puts '4- Consultar CNPJ'
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
    system 'clear'
  end
end

def entradaValores
  print "\nDigite o nome a inserir: "
  @name = gets.chomp
  print "Digite o número do CPF: "
  @cpf = gets.chomp.to_i
end

def submenu(option)
  sleep 0.5
  system "clear"
  if option == 1
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA FÍSICA - PF"
    entradaValores
    Person::Physical.new(@name, @cpf).add
  elsif option == 2
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CONSULTA DE CPF"
  elsif option == 3
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA JURÍDICA - PJ"
  elsif option == 4
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CONSULTA DE CPF"
  elsif option == 0
    puts "\nSaindo........"
    sleep 1
    exit
  else
    puts "\nOpção Inválida!!"
    sleep 1
    exit
  end
  # sleep 4
  # system "clear"
end



loop do
  puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
  puts "Selecione uma das seguintes opções:"
  puts '1- Acessar Sistema'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  menu(option)
end

# Person::Juridic.new('M. C. Investimentos', '40.241.123/0001-50').add
# puts ''
# Person::Physical.new('José Almeida', '425.123.123-12').add
