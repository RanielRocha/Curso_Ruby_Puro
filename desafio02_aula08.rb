# Crie um módulo chamado Person com as classes Juridic e Physical. 

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
      puts 'Pessoa Física Adicionada!'
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cpf}"
    end
  end
end

Person::Juridic.new('M. C. Investimentos', '40.241.123/0001-50').add
puts ''
Person::Physical.new('José Almeida', '425.123.123-12').add
