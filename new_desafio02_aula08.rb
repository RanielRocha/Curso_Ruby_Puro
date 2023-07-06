
require 'cpf_cnpj'

########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------

module Person
  class Juridic
    ########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
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
        sleep 5
        system "clear"
      else
        puts "\nO CNPJ informado não é válido"
        puts "\n---------------------------"
        puts "\nPessoa Jurídica NÃO Adicionada!" 
        sleep 2.5
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
        sleep 5
        system "clear"
      else
        puts "\nO CPF informado não é válido."
        puts "\n---------------------------"
        puts "\nPessoa Física NÃO Adicionada!" 
        sleep 2.5
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
      sleep 2
      system "clear"
    else
      puts "\nO CPF #{cpf.formatted} não é válido."
      sleep 2
      system "clear"
    end
  end
  ########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
  def verifica_cnpj(consulta_cnpj)
    cnpj = CNPJ.new(consulta_cnpj)
    # cnpj_teste = CNPJ.generate(true)
    # puts "gerou!!!!! #{cnpj_teste}"
    # sleep 5
    if cnpj.valid?
      puts "\nO CNPJ #{cnpj.formatted} é válido."
      sleep 2
      system "clear"
    else
      puts "\nO CNPJ #{cnpj.formatted} não é válido."
      sleep 2
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
########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
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

class EntradaValores
  def physical
    print "\nDigite o nome da PF a inserir: "
    @name = gets.chomp
    print "Digite o número do CPF: "
    @cpf = gets.chomp.to_i
  end

  def juridic
    ########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
    print "\nDigite o nome da PJ a inserir: "
    @nameJud = gets.chomp
    print "Digite o número do CNPJ: "
    @cnpj = gets.chomp.to_i
  end
end

def submenu(option)
  sleep 0.5
  system "clear"
  entradaPessoa = EntradaValores.new
  consulta_cpf_cnpj = Verifica_cpf_cnpj.new
  if option == 1
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA FÍSICA - PF"
    entradaPessoa.physical
    Person::Physical.new(@nameJud, @cpf).add
  elsif option == 2
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CONSULTA DE CPF"
    print "\nDigite o número do CPF a consultar: "
    @consulta_cpf = gets.chomp.to_i
    consulta_cpf_cnpj.verifica_cpf(@consulta_cpf)
    ########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
  elsif option == 3
    puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
    puts "CADASTRO DE PESSOA JURÍDICA - PJ"
    entradaPessoa.juridic
    Person::Juridic.new(@name, @cnpj).add
  elsif option == 4
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
  end
end


########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------
loop do
  puts "\n--- SISTEMA DE PESSOAS FÍSICAS E JURÍDICAS ---"
  puts "Selecione uma das seguintes opções:"
  puts '1- Acessar Sistema'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  menu(option)
end

########    ------ CORREÇÂO A FAZER NOS PJ - Nº CNPJ --------------