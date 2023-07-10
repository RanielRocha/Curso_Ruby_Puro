### MISSÂO ESPECIAL AULA 09
## Em uma classe chamada Carro, crie um método público chamado get_km que recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.
## O método get_km deve chamar um método privado com o nome de find_km. Este deve localizar e retornar o casamento de padrão 80km/h.
## No final, imprima este retorno. 

class Carro
  def get_km
    @text = "Um fusca de cor amarela viaja a 80km/h"
    find_km(@text)
  end

  private

  def find_km(text)
    regex = text.match(/\d{1,}\w{2}\/\w/)
  end
end

car = Carro.new
puts "O retorno do casamento de padrão é: #{car.get_km}"
  