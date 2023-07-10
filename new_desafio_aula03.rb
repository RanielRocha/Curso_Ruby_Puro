### MISSÂO ESPECIAL AULA 03
## Aprimoramento da versão inicial da "Calculadora" do arquivo 'desafio_aula02.rb', onde foi montado alguns menus interativos para o usuário entrar com a opção desejada em cada etapa.

class Operacoes
    def somar(num1, num2)
        result = num1 + num2
    end

    def subtrair(num1, num2)
        result = num1 - num2
    end

    def multiplicar(num1, num2)
        result = num1 * num2
    end

    def dividir(num1, num2)
        result = num1 / num2
    end

    def potenciar(num1, num2)
        result = num1 ** num2
    end

    def modulo(num1, num2)
        result = num1 % num2
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
        sleep 1
        system 'clear'
    end
end

def entradaValores
    sleep 0.5
    system "clear"
    puts "\n--- CALCULADORA SIMPLES em RUBY ---"
    print "\nDigite o primeiro número inteiro: "
    @num1 = gets.chomp.to_i
    print "Digite o segundo número inteiro: "
    @num2 = gets.chomp.to_i
end

def submenu(opcao_sub)
    operacao = Operacoes.new
    if opcao_sub == 1
        operador = '+'
        entradaValores
        result = operacao.somar(@num1, @num2)
    elsif opcao_sub == 2
        operador = '-'
        entradaValores
        result = operacao.subtrair(@num1, @num2)
    elsif opcao_sub == 3
        operador = 'X'
        entradaValores
        result = operacao.multiplicar(@num1, @num2)
    elsif opcao_sub == 4
        operador = '/'
        entradaValores
        result = operacao.dividir(@num1, @num2)
    elsif opcao_sub == 5
        operador = 'elevado por'
        entradaValores
        result = operacao.potenciar(@num1, @num2)
    elsif opcao_sub == 6
        operador = 'módulo de'
        entradaValores
        result = operacao.modulo(@num1, @num2)
    elsif opcao_sub == 0
        puts "\nSaindo........"
        sleep 1
        exit
    else
        puts "\nOpção Inválida!!"
        sleep 1
        exit
    end
    puts "\nO resultado de #{@num1} #{operador} #{@num2} é: #{result}"
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
