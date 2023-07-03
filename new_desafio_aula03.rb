### MISSÂO ESPECIAL AULA 03
class Operacoes
    def somar(num1, num2)
        result = num1 + num2
        puts "\nO resultado de #{num1} + #{num2} é: #{result}"
    end

    def subtrair(num1, num2)
        result = num1 - num2
        puts "\nO resultado de #{num1} - #{num2} é: #{result}"
    end

    def multiplicar(num1, num2)
        result = num1 * num2
        puts "\nO resultado de #{num1} X #{num2} é: #{result}"
    end

    def dividir(num1, num2)
        result = num1 / num2
        puts "\nO resultado de #{num1} / #{num2} é: #{result}"
    end

    def potenciar(num1, num2)
        result = num1 ** num2
        puts "\nO resultado de #{num1} elevado a #{num2} é: #{result}"
    end

    def modulo(num1, num2)
        result = num1 % num2
        puts "\nO resultado do MÓDULO de #{num1} por #{num2} é: #{result}"
    end
end

def menu(option)
    if option == 1
        sleep 0.5
        system "clear"
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        puts "Selecione uma das seguintes operações:"
        puts '1- Adição'
        puts '2- Subtração'
        puts '3- Multiplicação'
        puts '4- Divisão'
        puts '5- Potenciação'
        puts '6- Módulo'
        puts '0- Sair'
        print 'Opção: '
        opcao_sub = gets.chomp.to_i
        submenu(opcao_sub)
    elsif option == 0
        puts "\nSaindo........"
        sleep 1
        exit
    else
        puts "\nOpção Inválida!!"
    end
end

def submenu(opcao_sub)
    operacao = Operacoes.new
    sleep 0.5
    system "clear"
    # puts "\n--- CALCULADORA SIMPLES em RUBY ---"
    # print "\nDigite o primeiro número inteiro: "
    # num1 = gets.chomp.to_i
    # print "Digite o segundo número inteiro: "
    # num2 = gets.chomp.to_i
    if opcao_sub == 1
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.somar(num1, num2)
    elsif opcao_sub == 2
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.subtrair(num1, num2)
    elsif opcao_sub == 3
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.multiplicar(num1, num2)
    elsif opcao_sub == 4
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.dividir(num1, num2)
    elsif opcao_sub == 5
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.potenciar(num1, num2)
    elsif opcao_sub == 6
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        operacao.modulo(num1, num2)
    elsif opcao_sub == 0
        puts "\nSaindo........"
        sleep 1
        exit
    else
        puts "\nOpção Inválida!!"
    end
    sleep 4
    system "clear"
end

loop do
    puts "\n--- CALCULADORA SIMPLES em RUBY ---"
    puts "\nSelecione uma das seguintes opções"
    puts '1- Acessar calculadora'
    puts '0- Sair'
    print 'Opção: '
    option = gets.chomp.to_i
    menu(option)
end
