# No arquivo mercado.rb crie uma classe chamada Mercado que ao ser inicializada recebe como atributo um objeto da classe Produto.

# Dentro da classe, crie um método chamado comprar que imprime a seguinte frase “Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}”  

class Mercado < Produto
  def initialize(nome, preco)
    @produto = nome
    @preco = preco
  end

  def comprar
    puts "Você comprou o produto #{@produto} no valor de R$ #{@preco}."
  end
end