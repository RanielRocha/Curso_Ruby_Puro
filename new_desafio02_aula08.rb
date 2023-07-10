### MISSÂO ESPECIAL AULA 08
## Aprimoramento do código 'desafio02_aula08.rb', onde além de implementar os menus interativos para o usuário fazer sua escolha, é realizado a validação do número de CPF/CNPJ utilizando a Gem 'cpf_cnpj' e a impressão formatado com a separação correto dos caracteres.

require 'cpf_cnpj'

module Person
  class Juridic
    def initialize(nameJud, cnpj)
      @nameJud = nameJud
      @cnpj = cnpj
    end

    def add
      cnpj = CNPJ.new(@cnpj)
      if cnpj.valid?
        puts "\nO CNPJ informado é válido."
        sleep 1
        puts "\n---------------------------"
        puts 'Pessoa Jurídica Adicionada!'
        puts "Nome: #{@nameJud}"
        puts "CNPJ: #{cnpj.formatted}"
        sleep 6
        system "clear"
      else
        puts "\nO CNPJ informado não é válido"
        puts "\n---------------------------"
        puts "\nPessoa Jurídica NÃO Adicionada!" 
        sleep 3
        system "clear"
      end
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      cpf = CPF.new(@cpf)
      if cpf.valid?
        puts "\nO CPF informado é válido."
        sleep 1
        puts "\n---------------------------"
        puts "\nPessoa Física Adicionada!"
        puts "Nome: #{@name.capitalize}"
        puts "CPF: #{cpf.formatted}"
        sleep 6
        system "clear"
      else
        puts "\nO CPF informado não é válido."
        puts "\n---------------------------"
        puts "\nPessoa Física NÃO Adicionada!" 
        sleep 3
        system "clear"
      end
    end
  end
end

class Verifica_cpf_cnpj
  def verifica_cpf(consulta_cpf)
    cpf = CPF.new(consulta_cpf)
    if cpf.valid?
      puts "\nO CPF #{cpf.formatted} é válido."
      sleep 2.5
      system "clear"
    else
      puts "\nO CPF #{verif_cpf.formatted} não é válido."
      sleep 2.5
      system "clear"
    end
  end

  def verifica_cnpj(consulta_cnpj)
    cnpj = CNPJ.new(consulta_cnpj)
    if cnpj.valid?
      puts "\nO CNPJ #{cnpj.formatted} é válido."
      sleep 2.5
      system "clear"
    else
      puts "\nO CNPJ #{cnpj.formatted} não é válido."
      sleep 2.5
      system "clear"
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

def physical
  print "\nDigite o nome da PF a inserir: "
  @name = gets.chomp
  print "Digite o número do CPF: "
  @cpf = gets.chomp.to_i
end

def juridic
  print "\nDigite o nome da PJ a inserir: "
  @nameJud = gets.chomp
  print "Digite o número do CNPJ: "
  @cnpj = gets.chomp.to_i
end


def submenu(option)
  sleep 0.5
  consulta_cpf_cnpj = Verifica_cpf_cnpj.new
  if option == 1
    system "clear"
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA FÍSICA - PF"
    physical
    puts "----------------------------"
    Person::Physical.new(@name, @cpf).add
  elsif option == 2
    system "clear"
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CONSULTA DE CPF"
    print "\nDigite o número do CPF a consultar: "
    @consulta_cpf = gets.chomp.to_i
    consulta_cpf_cnpj.verifica_cpf(@consulta_cpf)
  elsif option == 3
    system "clear"
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA JURÍDICA - PJ"
    juridic
    Person::Juridic.new(@nameJud, @cnpj).add
  elsif option == 4
    system "clear"
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CONSULTA DE CPF"
    print "\nDigite o número do CNPJ a consultar: "
    @consulta_cnpj = gets.chomp.to_i
    consulta_cpf_cnpj.verifica_cnpj(@consulta_cnpj)
  elsif option == 0
    puts "\nSaindo........"
    sleep 1
    exit
  else
    puts "\nOpção Inválida!!"
    sleep 1
    system "clear"
  end
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
