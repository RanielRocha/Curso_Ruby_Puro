class Esportista
  def competir
    puts "Participando de uma competição!!"
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts "Correndo atrás da bola!!"
  end
end

class Maratonista < Esportista
  def correr
    puts "Percorrendo o circuito!!"
  end
end

def menu(option)
  jogadorDeFutebol = JogadorDeFutebol.new
  maratonista = Maratonista.new
  if option == 1
    sleep 0.5
    puts ""
    jogadorDeFutebol.competir
    jogadorDeFutebol.correr
    sleep 2
  elsif option == 2
    sleep 0.5
    puts ""
    maratonista.competir
    maratonista.correr
    sleep 2
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

loop do
  puts "\n--- Status dos Atletas ---"
  puts "Selecione uma das seguintes opções:"
  puts '1- Saber sobre o Jogador de Futebol'
  puts '2- Saber sobre o Maratonista'
  puts '0- Sair'
  print 'Opção: '
  option = gets.chomp.to_i
  menu(option)
end
