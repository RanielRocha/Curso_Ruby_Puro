### MISSÂO ESPECIAL AULA 03
result = ''
loop do
    puts "\n--- CALCULADORA SIMPLES em RUBY ---"
    puts "\nSelecione uma das seguintes opções"
    puts '1- Acessar calculadora'
    puts '0- Sair'
    print 'Opção: '
    option = gets.chomp.to_i
    
    if option == 1
        sleep 0.5
        system "clear"
        puts "\n--- CALCULADORA SIMPLES em RUBY ---"
        print "\nDigite o primeiro número inteiro: "
        num1 = gets.chomp.to_i
        print "Digite o segundo número inteiro: "
        num2 = gets.chomp.to_i
        puts "Selecione uma das seguintes operações"
        puts '1- Adição'
        puts '2- Subtração'
        puts '3- Multiplicação'
        puts '4- Divisão'
        puts '5- Potenciação'
        puts '6- Módulo'
        puts '0- Sair'
        print 'Operação: '
        operacao = gets.chomp.to_i

        if operacao == 1
            result = "O resultado de #{num1} + #{num2} é: #{num1 + num2}"
        elsif operacao == 2
            result = "O resultado de #{num1} - #{num2} é: #{num1 - num2}"
        elsif operacao == 3
            result = "O resultado de #{num1} X #{num2} é: #{num1 * num2}"
        elsif operacao == 4
            result = "O resultado de #{num1} / #{num2} é: #{num1 / num2}"
        elsif operacao == 5
            result = "O resultado de #{num1} ^ #{num2} é: #{num1 ** num2}"
        elsif operacao == 6
            result = "O resultado do MÓDULO de #{num1} por #{num2} é: #{num1 % num2}"
        elsif operacao == 0 
            puts 'Saindo........'
            sleep 1
            break if operacao == 0    
        else
            result = "Operação Inválida!!"
        end
    elsif option == 0
        puts "\nSaindo........"
        sleep 1
        break if option == 0
    else
        result = "Opção Inválida!!"
    end
    puts "\n#{result}"
    sleep 4
    system "clear"
end


# ## Resultado do OneBitCode
# result = ''
# loop do
#     puts result 
#     puts 'Selecione uma das seguintes opções'
#     puts '1- Adicionar'
#     puts '2- Subtrair'
#     puts '3- Multiplicar'
#     puts '4- Dividir'
#     puts '0- Sair'
#     print 'Opção: '

#     option = gets.chomp.to_i

#     case option 
#     when 1..4
#         print 'Digite o primeiro número: '
#         number1 = gets.chomp.to_i

#         print 'Digite o segundo número: '
#         number2 = gets.chomp.to_i
#         case option 
#         when 1
#             result = "#{number1} + #{number2} = #{number1 + number2}"
#         when 2
#             result = "#{number1} - #{number2} = #{number1 - number2}"
#         when 3
#             result = "#{number1} * #{number2} = #{number1 * number2}"
#         when 4
#             result = "#{number1} / #{number2} = #{number1 / number2}"
#         end
#     when 0
#         break
#     else 
#         result = 'Opção inválida'
#     end
#     # Comando que limpa o console
#     system "clear"
# end